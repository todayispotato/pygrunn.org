;(function (window, $) {

    var win, doc, pos,
        tableContainer,
        tableContainerWidth,
        table,
        tableWidth,
        tableWidthDifference;

    win = $(window);
    doc = $(document);
    pos = 0;
    tableContainer = $('.table-responsive');
    table = tableContainer.find('table');

    function tableLeft() {
        return parseInt(table.css('left'), 10);
    }

    function setPos(position, animate) {
        if (animate) {
            table.animate({
                'left': position
            }, 200);
        } else {
            table.css({
                'left': position
            });
        }
    }

    function isStopped(eventType, phase) {
        return ((eventType == 'mouseout' || eventType == 'mouseup') && phase == 'end') || phase == 'cancel';
    }

    function handleSwipeStatus(event, phase, direction, distance, duration, fingers) {
        if (event.type == 'mousemove') {
            handleMousemove(direction, distance);
        }
        if (isStopped(event.type, phase)) {
            handleStop();
        }
    }

    function handleMousemove(direction, distance) {
        if (direction == 'left') {
            moveLeft(distance);
        } else if (direction == 'right') {
            moveRight(distance);
        }
    }

    function moveLeft(distance) {
        if (Math.abs(tableLeft()) < tableWidthDifference) {
            distance += pos;
            setPos(-distance);
        }
    }

    function moveRight(distance) {
        if (tableLeft() < 0) {
            distance -= pos;
            setPos(distance);
        }
    }

    function handleStop() {
        if (Math.abs(tableLeft()) >= tableWidthDifference) {
            setPos(-tableWidthDifference, true);
        } else if (tableLeft() >= 0) {
            setPos(0, true);
        }
        pos = Math.abs(tableLeft());
    }

    function setSizes() {
        tableContainerWidth = tableContainer.outerWidth();
        tableWidth = table.outerWidth();
        tableWidthDifference = tableWidth - tableContainerWidth;
    }

    doc.on('ready', function () {

        setSizes();

        tableContainer.swipe({
            swipeStatus: handleSwipeStatus,
            triggerOnTouchLeave: true,
            threshold: 0
        });

    });

    win.on('resize', function () {

        setSizes();

    });

}(window, jQuery));
