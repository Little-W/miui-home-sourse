.class public Lcom/miui/home/launcher/gadget/PowerClearButton;
.super Lcom/miui/home/launcher/gadget/ClearButton;
.source "PowerClearButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/gadget/ClearButton;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected doClear()V
    .locals 6

    :try_start_0
    const-string p0, "miui.process.ProcessConfig"

    .line 26
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 27
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 28
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v4, 0x2

    .line 29
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "miui.process.ProcessManager"

    .line 31
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "kill"

    new-array v5, v0, [Ljava/lang/Class;

    aput-object p0, v5, v3

    .line 32
    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v3

    .line 33
    invoke-virtual {p0, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 35
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected initClearIcon()V
    .locals 1

    .line 19
    iget-object p0, p0, Lcom/miui/home/launcher/gadget/PowerClearButton;->mClearIcon:Lcom/miui/home/launcher/common/ClearIconImageView;

    const v0, 0x7f080273

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/ClearIconImageView;->setImageResource(I)V

    return-void
.end method
