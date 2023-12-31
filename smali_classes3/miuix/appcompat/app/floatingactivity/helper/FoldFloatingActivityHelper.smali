.class public Lmiuix/appcompat/app/floatingactivity/helper/FoldFloatingActivityHelper;
.super Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;
.source "FoldFloatingActivityHelper.java"


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;-><init>(Lmiuix/appcompat/app/AppCompatActivity;)V

    return-void
.end method


# virtual methods
.method public isFloatingModeSupport()Z
    .locals 4

    .line 14
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/helper/FoldFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x258

    if-lt v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 16
    :goto_0
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/helper/FoldFloatingActivityHelper;->mActivity:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-static {p0}, Lmiuix/core/util/screenutils/FreeFormModeHelper;->detectFreeFormMode(Landroid/content/Context;)I

    move-result p0

    if-eqz v0, :cond_1

    const/16 v0, 0x2000

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2003

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    return v1
.end method
