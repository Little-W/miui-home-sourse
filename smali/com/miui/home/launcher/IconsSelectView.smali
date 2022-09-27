.class public abstract Lcom/miui/home/launcher/IconsSelectView;
.super Lcom/miui/launcher/views/LauncherFrameLayout;
.source "IconsSelectView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/IconsSelectView$MyAdapter;
    }
.end annotation


# instance fields
.field protected mAppsGrid:Landroid/widget/GridView;

.field private mBtnCancel:Landroid/widget/TextView;

.field private mBtnOK:Landroid/widget/TextView;

.field private mCanSelectMultiple:Z

.field private mContainer:Landroid/view/View;

.field protected mSelectedObject:Ljava/lang/Object;

.field protected mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 78
    invoke-direct {p0, p1}, Lcom/miui/launcher/views/LauncherFrameLayout;-><init>(Landroid/content/Context;)V

    .line 79
    iput-boolean p2, p0, Lcom/miui/home/launcher/IconsSelectView;->mCanSelectMultiple:Z

    const v0, 0x7f0d004e

    .line 81
    invoke-static {p1, v0, p0}, Lcom/miui/home/launcher/IconsSelectView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0a009f

    .line 83
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/IconsSelectView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/IconsSelectView;->mContainer:Landroid/view/View;

    const p1, 0x7f0a0234

    .line 84
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/IconsSelectView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/home/launcher/IconsSelectView;->mTitle:Landroid/widget/TextView;

    const p1, 0x7f0a007a

    .line 85
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/IconsSelectView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/home/launcher/IconsSelectView;->mBtnOK:Landroid/widget/TextView;

    const p1, 0x7f0a0078

    .line 86
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/IconsSelectView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/home/launcher/IconsSelectView;->mBtnCancel:Landroid/widget/TextView;

    const p1, 0x7f0a00f5

    .line 87
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/IconsSelectView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    iput-object p1, p0, Lcom/miui/home/launcher/IconsSelectView;->mAppsGrid:Landroid/widget/GridView;

    const p1, 0x7f0a0081

    .line 88
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/IconsSelectView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-nez p2, :cond_0

    .line 90
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    const p2, 0x7f080128

    .line 91
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/IconsSelectView;->mBtnOK:Landroid/widget/TextView;

    new-instance p2, Lcom/miui/home/launcher/IconsSelectView$1;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/IconsSelectView$1;-><init>(Lcom/miui/home/launcher/IconsSelectView;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object p1, p0, Lcom/miui/home/launcher/IconsSelectView;->mBtnCancel:Landroid/widget/TextView;

    new-instance p2, Lcom/miui/home/launcher/IconsSelectView$2;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/IconsSelectView$2;-><init>(Lcom/miui/home/launcher/IconsSelectView;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    new-instance p1, Lcom/miui/home/launcher/IconsSelectView$3;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/IconsSelectView$3;-><init>(Lcom/miui/home/launcher/IconsSelectView;)V

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/IconsSelectView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/IconsSelectView;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/miui/home/launcher/IconsSelectView;->mCanSelectMultiple:Z

    return p0
.end method


# virtual methods
.method public canMultiSelect()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lcom/miui/home/launcher/IconsSelectView;->mCanSelectMultiple:Z

    return v0
.end method

.method public abstract cancel()V
.end method

.method protected abstract getItemView(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/Object;)Landroid/view/View;
.end method

.method public abstract ok()V
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/miui/home/launcher/IconsSelectView;->cancel()V

    const/4 p1, 0x1

    return p1

    .line 138
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/launcher/views/LauncherFrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public performClick()Z
    .locals 1

    .line 128
    invoke-virtual {p0}, Lcom/miui/home/launcher/IconsSelectView;->cancel()V

    const/4 v0, 0x1

    return v0
.end method

.method protected setSelected(Landroid/view/ViewGroup;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a01e0

    if-eqz p2, :cond_1

    const p2, 0x7f08011f

    .line 150
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 151
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0801ac

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 153
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method protected abstract updateTitle()V
.end method
