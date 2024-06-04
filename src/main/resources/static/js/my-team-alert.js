

function confirmKick(form) {
    Swal.fire({
        title: '정말로 추방하시겠습니까?',
        text: "이 작업은 되돌릴 수 없습니다!",
        icon: 'warning',
        showCancelButton: true,
        background: 'black',
        color: 'white',
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: '네, 추방합니다!',
        cancelButtonText: '취소',

    }).then((result) => {
        if (result.isConfirmed) {
            Swal.fire({
                title: '선수 추방이 완료되었습니다.',
                icon: 'success',
                background: 'black',
                color: 'white',
                confirmButtonColor: '#38ff8e',
                confirmButtonText: '확인',
                allowOutsideClick: false
            }).then((result) => {
                if (result.isConfirmed) {
                    // 여기서 폼 제출
                    form.submit(); // 예시로 폼을 제출하는 코드
                }

            });
        }
    });
}

function confirmDelete(form) {
    Swal.fire({
        title: '정말로 삭제하시겠습니까?',
        text: "이 작업은 되돌릴 수 없습니다!",
        icon: 'warning',
        showCancelButton: true,
        background: 'black',
        color: 'white',
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: '네, 삭제합니다!',
        cancelButtonText: '취소',
    }).then((result) => {
        if (result.isConfirmed) {
            Swal.fire({
                title: '삭제가 완료되었습니다.',
                icon: 'success',
                background: 'black',
                color: 'white',
                confirmButtonColor: '#38ff8e',
                confirmButtonText: '확인',
                allowOutsideClick: false
            }).then((result) => {
                if (result.isConfirmed) {
                    // 여기서 폼 제출
                    form.submit(); // 예시로 폼을 제출하는 코드
                }

            });
        }
    });
}