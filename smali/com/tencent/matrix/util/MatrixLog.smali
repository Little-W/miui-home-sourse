.class public Lcom/tencent/matrix/util/MatrixLog;
.super Ljava/lang/Object;
.source "MatrixLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/matrix/util/MatrixLog$MatrixLogImp;
    }
.end annotation


# static fields
.field private static debugLog:Lcom/tencent/matrix/util/MatrixLog$MatrixLogImp;

.field private static matrixLogImp:Lcom/tencent/matrix/util/MatrixLog$MatrixLogImp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/tencent/matrix/util/MatrixLog$1;

    invoke-direct {v0}, Lcom/tencent/matrix/util/MatrixLog$1;-><init>()V

    sput-object v0, Lcom/tencent/matrix/util/MatrixLog;->debugLog:Lcom/tencent/matrix/util/MatrixLog$MatrixLogImp;

    .line 68
    sget-object v0, Lcom/tencent/matrix/util/MatrixLog;->debugLog:Lcom/tencent/matrix/util/MatrixLog$MatrixLogImp;

    sput-object v0, Lcom/tencent/matrix/util/MatrixLog;->matrixLogImp:Lcom/tencent/matrix/util/MatrixLog$MatrixLogImp;

    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 106
    sget-object v0, Lcom/tencent/matrix/util/MatrixLog;->matrixLogImp:Lcom/tencent/matrix/util/MatrixLog$MatrixLogImp;

    if-eqz v0, :cond_0

    .line 107
    invoke-interface {v0, p0, p1, p2}, Lcom/tencent/matrix/util/MatrixLog$MatrixLogImp;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 88
    sget-object v0, Lcom/tencent/matrix/util/MatrixLog;->matrixLogImp:Lcom/tencent/matrix/util/MatrixLog$MatrixLogImp;

    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0, p0, p1, p2}, Lcom/tencent/matrix/util/MatrixLog$MatrixLogImp;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 100
    sget-object v0, Lcom/tencent/matrix/util/MatrixLog;->matrixLogImp:Lcom/tencent/matrix/util/MatrixLog$MatrixLogImp;

    if-eqz v0, :cond_0

    .line 101
    invoke-interface {v0, p0, p1, p2}, Lcom/tencent/matrix/util/MatrixLog$MatrixLogImp;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static varargs printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 112
    sget-object v0, Lcom/tencent/matrix/util/MatrixLog;->matrixLogImp:Lcom/tencent/matrix/util/MatrixLog$MatrixLogImp;

    if-eqz v0, :cond_0

    .line 113
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/tencent/matrix/util/MatrixLog$MatrixLogImp;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 94
    sget-object v0, Lcom/tencent/matrix/util/MatrixLog;->matrixLogImp:Lcom/tencent/matrix/util/MatrixLog$MatrixLogImp;

    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0, p0, p1, p2}, Lcom/tencent/matrix/util/MatrixLog$MatrixLogImp;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
