.class public Lmiuix/appcompat/app/floatingactivity/helper/PadFloatingActivityHelper;
.super Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;
.source "PadFloatingActivityHelper.java"


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;-><init>(Lmiuix/appcompat/app/AppCompatActivity;)V

    return-void
.end method


# virtual methods
.method public isFloatingModeSupport()Z
    .locals 5

    .line 15
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/PadFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v0}, Lmiuix/core/util/screenutils/SplitScreenModeHelper;->detectScreenMode(Landroid/content/Context;)I

    move-result v0

    .line 16
    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/helper/PadFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {v1}, Lmiuix/core/util/screenutils/FreeFormModeHelper;->detectFreeFormMode(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x2000

    if-ne v1, v4, :cond_1

    const/16 v4, 0x1004

    if-eq v0, v4, :cond_0

    const/16 v4, 0x1003

    if-ne v0, v4, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    const/16 v4, 0x2003

    if-ne v1, v4, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    if-nez v0, :cond_4

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :cond_4
    :goto_2
    return v2
.end method
