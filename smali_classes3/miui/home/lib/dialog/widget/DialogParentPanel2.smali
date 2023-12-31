.class public Lmiui/home/lib/dialog/widget/DialogParentPanel2;
.super Landroid/widget/LinearLayout;
.source "DialogParentPanel2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;
    }
.end annotation


# instance fields
.field private final mFloatingWindowSize:Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lmiui/home/lib/dialog/widget/DialogParentPanel2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance p3, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;

    invoke-direct {p3, p1, p2}, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p3, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->mFloatingWindowSize:Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 54
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 55
    iget-object p0, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->mFloatingWindowSize:Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;

    invoke-virtual {p0}, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->onConfigurationChanged()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 48
    iget-object v0, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->mFloatingWindowSize:Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;

    invoke-virtual {v0, p1}, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->getWidthMeasureSpecForDialog(I)I

    move-result p1

    iget-object v0, p0, Lmiui/home/lib/dialog/widget/DialogParentPanel2;->mFloatingWindowSize:Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;

    .line 49
    invoke-virtual {v0, p2}, Lmiui/home/lib/dialog/widget/DialogParentPanel2$FloatingABOLayoutSpec;->getHeightMeasureSpecForDialog(I)I

    move-result p2

    .line 48
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
