.class Lcom/miui/home/launcher/ApplicationsMessage$1;
.super Lcom/miui/home/launcher/ApplicationsMessage$ScriptCountObserver;
.source "ApplicationsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/ApplicationsMessage;->initSuperscriptCountObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/ApplicationsMessage;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/ApplicationsMessage;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/miui/home/launcher/ApplicationsMessage$1;->this$0:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-direct {p0, p2, p3}, Lcom/miui/home/launcher/ApplicationsMessage$ScriptCountObserver;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic lambda$onChange$0(Lcom/miui/home/launcher/ApplicationsMessage$1;Ljava/lang/Void;)Ljava/lang/String;
    .locals 3

    const/4 p1, 0x0

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage$1;->this$0:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-static {v0}, Lcom/miui/home/launcher/ApplicationsMessage;->access$100(Lcom/miui/home/launcher/ApplicationsMessage;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage$1;->this$0:Lcom/miui/home/launcher/ApplicationsMessage;

    .line 88
    invoke-static {v0}, Lcom/miui/home/launcher/ApplicationsMessage;->access$100(Lcom/miui/home/launcher/ApplicationsMessage;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ApplicationsMessage$1;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/LauncherUtils;->isAppCornerAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage$1;->this$0:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-static {v0}, Lcom/miui/home/launcher/ApplicationsMessage;->access$100(Lcom/miui/home/launcher/ApplicationsMessage;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage$1;->this$0:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-static {v0}, Lcom/miui/home/launcher/ApplicationsMessage;->access$100(Lcom/miui/home/launcher/ApplicationsMessage;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/home/launcher/ApplicationsMessage$1;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".superscript_count"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage$1;->this$0:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-static {v0}, Lcom/miui/home/launcher/ApplicationsMessage;->access$100(Lcom/miui/home/launcher/ApplicationsMessage;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/home/launcher/ApplicationsMessage$1;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".superscript_count"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    .line 95
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object p1

    :cond_3
    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    const-string v1, "Launcher.ApplicationsMessage"

    const-string v2, "initSuperscriptCountObserver"

    .line 98
    return-object p1
.end method

.method public static synthetic lambda$onChange$1(Lcom/miui/home/launcher/ApplicationsMessage$1;Ljava/lang/String;)V
    .locals 8

    :try_start_0
    const-string v0, ","

    .line 103
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 104
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage$1;->this$0:Lcom/miui/home/launcher/ApplicationsMessage;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ApplicationsMessage$1;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 105
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/launcher/utils/LauncherUtils;->getUserId(Landroid/os/UserHandle;)I

    move-result v3

    const/4 v4, 0x0

    .line 106
    aget-object v5, p1, v4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_1

    aget-object v5, p1, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_0

    goto :goto_0

    :cond_0
    aget-object v4, p1, v4

    goto :goto_1

    :cond_1
    :goto_0
    move-object v4, v6

    .line 107
    :goto_1
    array-length v5, p1

    const/4 v7, 0x1

    if-le v5, v7, :cond_2

    aget-object p1, p1, v7

    move-object v5, p1

    goto :goto_2

    :cond_2
    move-object v5, v6

    :goto_2
    const/4 v6, 0x0

    .line 104
    invoke-static/range {v0 .. v6}, Lcom/miui/home/launcher/ApplicationsMessage;->access$000(Lcom/miui/home/launcher/ApplicationsMessage;Landroid/content/ComponentName;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    const-string v0, "Launcher.ApplicationsMessage"

    const-string v1, "ScriptCountObserver"

    .line 109
    :goto_3
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 85
    new-instance p1, Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$1$3CfSFQ6cftzV24w1Apw86pvU7pA;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$1$3CfSFQ6cftzV24w1Apw86pvU7pA;-><init>(Lcom/miui/home/launcher/ApplicationsMessage$1;)V

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$1$qVeCU5hIImUKe2OeIORbCtjZieI;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$1$qVeCU5hIImUKe2OeIORbCtjZieI;-><init>(Lcom/miui/home/launcher/ApplicationsMessage$1;)V

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method
