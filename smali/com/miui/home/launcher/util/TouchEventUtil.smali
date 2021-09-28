.class public Lcom/miui/home/launcher/util/TouchEventUtil;
.super Ljava/lang/Object;
.source "TouchEventUtil.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SoonBlockedPrivateApi"
    }
.end annotation


# static fields
.field private static mGetTouchTargetMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 18
    :try_start_0
    const-class v0, Landroid/view/ViewGroup;

    const-string v1, "getTouchTarget"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/View;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/util/TouchEventUtil;->mGetTouchTargetMethod:Ljava/lang/reflect/Method;

    .line 19
    sget-object v0, Lcom/miui/home/launcher/util/TouchEventUtil;->mGetTouchTargetMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Launcher_dispatchTouchEvent"

    const-string v2, "TouchEventUtil"

    .line 21
    :goto_0
    return-void
.end method

.method public static printTouchEventCallChain(Landroid/view/View;)V
    .locals 6

    if-eqz p0, :cond_1

    .line 30
    :try_start_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/home/launcher/util/TouchEventUtil;->mGetTouchTargetMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 31
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    move v1, v0

    .line 32
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 33
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 34
    sget-object v3, Lcom/miui/home/launcher/util/TouchEventUtil;->mGetTouchTargetMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v0

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, "Launcher_dispatchTouchEvent_View"

    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " View="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/home/launcher/MiuiHomeLog;->saveRecorded(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_0
    invoke-static {v2}, Lcom/miui/home/launcher/util/TouchEventUtil;->printTouchEventCallChain(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    if-nez p0, :cond_2

    const-string p0, "Launcher_dispatchTouchEvent_View"

    const-string v0, "  ViewGroup=null"

    .line 41
    invoke-static {p0, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->saveRecorded(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 42
    :cond_2
    sget-object p0, Lcom/miui/home/launcher/util/TouchEventUtil;->mGetTouchTargetMethod:Ljava/lang/reflect/Method;

    if-nez p0, :cond_3

    const-string p0, "Launcher_dispatchTouchEvent_View"

    const-string v0, "  GetTouchTargetMethod=null"

    .line 43
    invoke-static {p0, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->saveRecorded(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v0, "Launcher_dispatchTouchEvent_View"

    .line 46
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->saveRecorded(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method
