.class public Lcom/miui/home/smallwindow/ItemView;
.super Landroid/widget/LinearLayout;
.source "ItemView.java"


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, v0}, Lcom/miui/home/smallwindow/ItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/smallwindow/ItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/miui/home/smallwindow/ItemView;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/miui/home/smallwindow/ItemView;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 28
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 29
    sget v0, Lcom/miui/home/smallwindow/R$id;->icon:I

    invoke-virtual {p0, v0}, Lcom/miui/home/smallwindow/ItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/smallwindow/ItemView;->mImageView:Landroid/widget/ImageView;

    .line 30
    sget v0, Lcom/miui/home/smallwindow/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/miui/home/smallwindow/ItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/smallwindow/ItemView;->mTextView:Landroid/widget/TextView;

    return-void
.end method
