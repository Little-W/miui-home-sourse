.class public Lcom/tencent/matrix/trace/hacker/ActivityThreadHacker;
.super Ljava/lang/Object;
.source "ActivityThreadHacker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/matrix/trace/hacker/ActivityThreadHacker$HackCallback;
    }
.end annotation


# static fields
.field public static sApplicationCreateBeginMethodIndex:Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;

.field private static sApplicationCreateBeginTime:J

.field private static sApplicationCreateEndTime:J

.field public static sApplicationCreateScene:I

.field public static sLastLaunchActivityMethodIndex:Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;

.field private static sLastLaunchActivityTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;

    invoke-direct {v0}, Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;-><init>()V

    sput-object v0, Lcom/tencent/matrix/trace/hacker/ActivityThreadHacker;->sLastLaunchActivityMethodIndex:Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;

    .line 40
    new-instance v0, Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;

    invoke-direct {v0}, Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;-><init>()V

    sput-object v0, Lcom/tencent/matrix/trace/hacker/ActivityThreadHacker;->sApplicationCreateBeginMethodIndex:Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;

    const/16 v0, -0x64

    .line 41
    sput v0, Lcom/tencent/matrix/trace/hacker/ActivityThreadHacker;->sApplicationCreateScene:I

    return-void
.end method

.method static synthetic access$002(J)J
    .locals 0

    .line 34
    sput-wide p0, Lcom/tencent/matrix/trace/hacker/ActivityThreadHacker;->sLastLaunchActivityTime:J

    return-wide p0
.end method

.method static synthetic access$102(J)J
    .locals 0

    .line 34
    sput-wide p0, Lcom/tencent/matrix/trace/hacker/ActivityThreadHacker;->sApplicationCreateEndTime:J

    return-wide p0
.end method

.method public static hackSysHandlerCallback()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 45
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/tencent/matrix/trace/hacker/ActivityThreadHacker;->sApplicationCreateBeginTime:J

    .line 46
    invoke-static {}, Lcom/tencent/matrix/trace/core/AppMethodBeat;->getInstance()Lcom/tencent/matrix/trace/core/AppMethodBeat;

    move-result-object v2

    const-string v3, "ApplicationCreateBeginMethodIndex"

    invoke-virtual {v2, v3}, Lcom/tencent/matrix/trace/core/AppMethodBeat;->maskIndex(Ljava/lang/String;)Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;

    move-result-object v2

    sput-object v2, Lcom/tencent/matrix/trace/hacker/ActivityThreadHacker;->sApplicationCreateBeginMethodIndex:Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;

    const-string v2, "android.app.ActivityThread"

    .line 47
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "sCurrentActivityThread"

    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 49
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 50
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "mH"

    .line 51
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 52
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 54
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mCallback"

    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 56
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 57
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Handler$Callback;

    .line 58
    new-instance v5, Lcom/tencent/matrix/trace/hacker/ActivityThreadHacker$HackCallback;

    invoke-direct {v5, v4}, Lcom/tencent/matrix/trace/hacker/ActivityThreadHacker$HackCallback;-><init>(Landroid/os/Handler$Callback;)V

    .line 59
    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "Matrix.ActivityThreadHacker"

    const-string v3, "hook system handler completed. start:%s SDK_INT:%s"

    const/4 v4, 0x2

    .line 60
    new-array v4, v4, [Ljava/lang/Object;

    sget-wide v5, Lcom/tencent/matrix/trace/hacker/ActivityThreadHacker;->sApplicationCreateBeginTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v0

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/tencent/matrix/util/MatrixLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Matrix.ActivityThreadHacker"

    const-string v4, "hook system handler err! %s"

    .line 62
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v3, v4, v1}, Lcom/tencent/matrix/util/MatrixLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
