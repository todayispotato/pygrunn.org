;(function (window, $) {

    var win, doc, pos,
        stopEvents,
        startEvents,
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
    startEvents = ['mousemove', 'touchmove'];
    stopEvents = ['mouseout', 'mouseup', 'touchend'];

    function validStartEvent(eventType) {
        return startEvents.indexOf(eventType) > -1;
    }

    function validStopEvent(eventType) {
        return stopEvents.indexOf(eventType) > -1;
    }

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
        return (validStopEvent(eventType) && phase == 'end') || phase == 'cancel';
    }

    function handleSwipeStatus(event, phase, direction, distance, duration, fingers) {
        if (validStartEvent(event.type)) {
            handleMove(direction, distance);
        }
        if (isStopped(event.type, phase)) {
            handleStop();
        }
    }

    function handleMove(direction, distance) {
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
            threshold: 0,
            allowPageScroll: 'auto'
        });

    });

    win.on('resize', function () {

        setSizes();

    });

}(window, jQuery));
