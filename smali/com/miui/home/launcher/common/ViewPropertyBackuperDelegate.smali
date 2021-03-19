.class public Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;
.super Ljava/lang/Object;
.source "ViewPropertyBackuperDelegate.java"

# interfaces
.implements Lcom/miui/home/launcher/common/ViewPropertyBackuper;


# instance fields
.field mAlpha:F

.field mTransX:F

.field mTransY:F

.field mView:Landroid/view/View;

.field mVisibility:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public backupProperty()V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;->mVisibility:I

    .line 22
    iget-object v0, p0, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;->mTransX:F

    .line 23
    iget-object v0, p0, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;->mTransY:F

    .line 24
    iget-object v0, p0, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;->mAlpha:F

    .line 25
    iget-object v0, p0, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    iget-object v0, p0, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 27
    iget-object v0, p0, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 28
    iget-object v0, p0, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;->mView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public restoreProperty()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;->mView:Landroid/view/View;

    iget v1, p0, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;->mVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    iget-object v0, p0, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;->mView:Landroid/view/View;

    iget v1, p0, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;->mAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 35
    iget-object v0, p0, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;->mView:Landroid/view/View;

    iget v1, p0, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;->mTransX:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 36
    iget-object v0, p0, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;->mView:Landroid/view/View;

    iget v1, p0, Lcom/miui/home/launcher/common/ViewPropertyBackuperDelegate;->mTransY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
