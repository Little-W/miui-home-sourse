.class public Lmiuix/androidbasewidget/widget/SingleCenterTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SingleCenterTextView.java"


# instance fields
.field private mEnableSingleCenter:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0

    .line 33
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    .line 34
    iget-boolean p1, p0, Lmiuix/androidbasewidget/widget/SingleCenterTextView;->mEnableSingleCenter:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/SingleCenterTextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lmiuix/androidbasewidget/widget/SingleCenterTextView;->getGravity()I

    move-result p1

    if-eq p1, p2, :cond_0

    .line 35
    invoke-virtual {p0, p2}, Lmiuix/androidbasewidget/widget/SingleCenterTextView;->setGravity(I)V

    :cond_0
    return-void
.end method

.method public setEnableSingleCenter(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lmiuix/androidbasewidget/widget/SingleCenterTextView;->mEnableSingleCenter:Z

    return-void
.end method
