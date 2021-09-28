.class final Lcom/tencent/matrix/trace/hacker/ActivityThreadHacker$HackCallback;
.super Ljava/lang/Object;
.source "ActivityThreadHacker.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/matrix/trace/hacker/ActivityThreadHacker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HackCallback"
.end annotation


# static fields
.field private static hasPrint:I = 0xa

.field private static isCreated:Z = false


# instance fields
.field private final mOriginalCallback:Landroid/os/Handler$Callback;

.field private method:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/os/Handler$Callback;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lcom/tencent/matrix/trace/hacker/ActivityThreadHacker$HackCallback;->method:Ljava/lang/reflect/Method;

    .line 90
    iput-object p1, p0, Lcom/tencent/matrix/trace/hacker/ActivityThreadHacker$HackCallback;->mOriginalCallback:Landroid/os/Handler$Callback;

    return-void
.end method

.method private isLaunchActivity(Landroid/os/Message;)Z
    .locals 7

    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x64

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x1b

    if-le v0, v4, :cond_3

    .line 125
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x9f

    if-ne v0, v4, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/tencent/matrix/trace/hacker/ActivityThreadHacker$HackCallback;->method:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    const-string v0, "android.app.servertransaction.ClientTransaction"

    .line 128
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v4, "getCallbacks"

    .line 129
    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/matrix/trace/hacker/ActivityThreadHacker$HackCallback;->method:Ljava/lang/reflect/Method;

    .line 130
    iget-object v0, p0, Lcom/tencent/matrix/trace/hacker/ActivityThreadHacker$HackCallback;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/tencent/matrix/trace/hacker/ActivityThreadHacker$HackCallback;->method:Ljava/lang/reflect/Method;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 133
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 134
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, ".LaunchActivityItem"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    const-string v4, "Matrix.ActivityThreadHacker"

    const-string v5, "[isLaunchActivity] %s"

    .line 137
    new-array v6, v2, [Ljava/lang/Object;

    aput-object v0, v6, v3

    invoke-static {v4, v5, v6}, Lcom/tencent/matrix/util/MatrixLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    :cond_1
    iget p1, p1, Landroid/os/Message;->what:I

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    return v2

    .line 142
    :cond_3
    iget p1, p1, Landroid/os/Message;->what:I

    if-ne p1, v1, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    :goto_1
    return v2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 8

    .line 96
    invoke-static {}, Lcom/tencent/matrix/trace/core/AppMethodBeat;->isRealTrace()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/tencent/matrix/trace/hacker/ActivityThreadHacker$HackCallback;->mOriginalCallback:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 100
    :cond_1
    invoke-direct {p0, p1}, Lcom/tencent/matrix/trace/hacker/ActivityThreadHacker$HackCallback;->isLaunchActivity(Landroid/os/Message;)Z

    move-result v0

    .line 101
    sget v3, Lcom/tencent/matrix/trace/hacker/ActivityThreadHacker$HackCallback;->hasPrint:I

    if-lez v3, :cond_2

    const-string v3, "Matrix.ActivityThreadHacker"

    const-string v4, "[handleMessage] msg.what:%s begin:%s isLaunchActivity:%s"

    const/4 v5, 0x3

    .line 102
    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/tencent/matrix/util/MatrixLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    sget v3, Lcom/tencent/matrix/trace/hacker/ActivityThreadHacker$HackCallback;->hasPrint:I

    sub-int/2addr v3, v2

    sput v3, Lcom/tencent/matrix/trace/hacker/ActivityThreadHacker$HackCallback;->hasPrint:I

    :cond_2
    if-eqz v0, :cond_3

    .line 106
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/tencent/matrix/trace/hacker/ActivityThreadHacker;->access$002(J)J

    .line 107
    invoke-static {}, Lcom/tencent/matrix/trace/core/AppMethodBeat;->getInstance()Lcom/tencent/matrix/trace/core/AppMethodBeat;

    move-result-object v3

    const-string v4, "LastLaunchActivityMethodIndex"

    invoke-virtual {v3, v4}, Lcom/tencent/matrix/trace/core/AppMethodBeat;->maskIndex(Ljava/lang/String;)Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;

    move-result-object v3

    sput-object v3, Lcom/tencent/matrix/trace/hacker/ActivityThreadHacker;->sLastLaunchActivityMethodIndex:Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;

    .line 110
    :cond_3
    sget-boolean v3, Lcom/tencent/matrix/trace/hacker/ActivityThreadHacker$HackCallback;->isCreated:Z

    if-nez v3, :cond_5

    if-nez v0, :cond_4

    .line 111
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x72

    if-eq v0, v3, :cond_4

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x71

    if-ne v0, v3, :cond_5

    .line 112
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/tencent/matrix/trace/hacker/ActivityThreadHacker;->access$102(J)J

    .line 113
    iget v0, p1, Landroid/os/Message;->what:I

    sput v0, Lcom/tencent/matrix/trace/hacker/ActivityThreadHacker;->sApplicationCreateScene:I

    .line 114
    sput-boolean v2, Lcom/tencent/matrix/trace/hacker/ActivityThreadHacker$HackCallback;->isCreated:Z

    .line 118
    :cond_5
    iget-object v0, p0, Lcom/tencent/matrix/trace/hacker/ActivityThreadHacker$HackCallback;->mOriginalCallback:Landroid/os/Handler$Callback;

    if-eqz v0, :cond_6

    invoke-interface {v0, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    move-result p1

    if-eqz p1, :cond_6

    move v1, v2

    :cond_6
    return v1
.end method
