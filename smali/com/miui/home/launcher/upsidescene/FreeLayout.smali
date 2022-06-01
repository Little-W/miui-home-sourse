.class public Lcom/miui/home/launcher/upsidescene/FreeLayout;
.super Landroid/view/ViewGroup;
.source "FreeLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/upsidescene/FreeLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static mTmpRect:Landroid/graphics/Rect;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

.field private mScreenData:Lcom/miui/home/launcher/upsidescene/data/Screen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/upsidescene/FreeLayout;->mTmpRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/FreeLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method private measureChild(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    .line 89
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 90
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v2, :cond_0

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_0

    :cond_0
    move v3, v1

    move v1, v0

    move v0, v3

    .line 97
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    return-void
.end method


# virtual methods
.method public addSprite(Lcom/miui/home/launcher/upsidescene/data/Sprite;)Lcom/miui/home/launcher/upsidescene/SpriteView;
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/FreeLayout;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getFreeStyle()Lcom/miui/home/launcher/upsidescene/data/FreeStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/FreeLayout;->mScreenData:Lcom/miui/home/launcher/upsidescene/data/Screen;

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->addSprite(Lcom/miui/home/launcher/upsidescene/data/Screen;Lcom/miui/home/launcher/upsidescene/data/Sprite;)V

    .line 140
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->addSpriteView(Lcom/miui/home/launcher/upsidescene/data/Sprite;)Lcom/miui/home/launcher/upsidescene/SpriteView;

    move-result-object p1

    return-object p1
.end method

.method public addSpriteView(Lcom/miui/home/launcher/upsidescene/data/Sprite;)Lcom/miui/home/launcher/upsidescene/SpriteView;
    .locals 5

    .line 144
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/FreeLayout;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/FreeLayout;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/upsidescene/SpriteView;->createContentView(Lcom/miui/home/launcher/upsidescene/data/Sprite;Lcom/miui/home/launcher/upsidescene/SceneScreen;Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 148
    :cond_0
    new-instance v1, Lcom/miui/home/launcher/upsidescene/SpriteView;

    iget-object v2, p0, Lcom/miui/home/launcher/upsidescene/FreeLayout;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/home/launcher/upsidescene/FreeLayout;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-direct {v1, v2, p1, v3, v0}, Lcom/miui/home/launcher/upsidescene/SpriteView;-><init>(Landroid/content/Context;Lcom/miui/home/launcher/upsidescene/data/Sprite;Lcom/miui/home/launcher/upsidescene/SceneScreen;Landroid/view/View;)V

    .line 149
    new-instance v0, Lcom/miui/home/launcher/upsidescene/FreeLayout$LayoutParams;

    invoke-direct {v0}, Lcom/miui/home/launcher/upsidescene/FreeLayout$LayoutParams;-><init>()V

    .line 150
    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getTop()I

    move-result v2

    iput v2, v0, Lcom/miui/home/launcher/upsidescene/FreeLayout$LayoutParams;->top:I

    .line 151
    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getLeft()I

    move-result v2

    iput v2, v0, Lcom/miui/home/launcher/upsidescene/FreeLayout$LayoutParams;->left:I

    .line 152
    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getWidth()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getHeight()I

    move-result v2

    if-lez v2, :cond_1

    .line 153
    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getWidth()I

    move-result v2

    iput v2, v0, Lcom/miui/home/launcher/upsidescene/FreeLayout$LayoutParams;->width:I

    .line 154
    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getHeight()I

    move-result p1

    iput p1, v0, Lcom/miui/home/launcher/upsidescene/FreeLayout$LayoutParams;->height:I

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getFunction()Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/upsidescene/data/Function;->getType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 157
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070149

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 158
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070148

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 159
    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getFunction()Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/upsidescene/data/Function$SystemGadgetFunction;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/data/Function$SystemGadgetFunction;->getGadgetId()I

    move-result p1

    invoke-static {p1}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getNoMtzInfo(I)Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object p1

    .line 160
    iget v4, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanX:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v2, v4

    iput v2, v0, Lcom/miui/home/launcher/upsidescene/FreeLayout$LayoutParams;->width:I

    .line 161
    iget p1, p1, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanY:I

    int-to-float p1, p1

    mul-float/2addr p1, v3

    float-to-int p1, p1

    iput p1, v0, Lcom/miui/home/launcher/upsidescene/FreeLayout$LayoutParams;->height:I

    .line 164
    :cond_2
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method public bringToTop(Lcom/miui/home/launcher/upsidescene/SpriteView;)V
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/FreeLayout;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getFreeStyle()Lcom/miui/home/launcher/upsidescene/data/FreeStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/FreeLayout;->mScreenData:Lcom/miui/home/launcher/upsidescene/data/Screen;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SpriteView;->getSpriteData()Lcom/miui/home/launcher/upsidescene/data/Sprite;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->bringSpriteToTop(Lcom/miui/home/launcher/upsidescene/data/Screen;Lcom/miui/home/launcher/upsidescene/data/Sprite;)V

    .line 135
    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SpriteView;->bringToFront()V

    return-void
.end method

.method public exitEditMode()V
    .locals 3

    .line 189
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 190
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 191
    instance-of v2, v1, Lcom/miui/home/launcher/upsidescene/SpriteView;

    if-eqz v2, :cond_0

    .line 192
    check-cast v1, Lcom/miui/home/launcher/upsidescene/SpriteView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/SpriteView;->exitEditMode()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public exitMoveMode()V
    .locals 3

    .line 207
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 208
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 209
    instance-of v2, v1, Lcom/miui/home/launcher/upsidescene/SpriteView;

    if-eqz v2, :cond_0

    .line 210
    check-cast v1, Lcom/miui/home/launcher/upsidescene/SpriteView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/SpriteView;->exitMoveMode()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getScreenData()Lcom/miui/home/launcher/upsidescene/data/Screen;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/FreeLayout;->mScreenData:Lcom/miui/home/launcher/upsidescene/data/Screen;

    return-object v0
.end method

.method public gotoEditMode()V
    .locals 3

    .line 180
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 181
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 182
    instance-of v2, v1, Lcom/miui/home/launcher/upsidescene/SpriteView;

    if-eqz v2, :cond_0

    .line 183
    check-cast v1, Lcom/miui/home/launcher/upsidescene/SpriteView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/SpriteView;->gotoEditMode()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public gotoMoveMode()V
    .locals 3

    .line 198
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 199
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 200
    instance-of v2, v1, Lcom/miui/home/launcher/upsidescene/SpriteView;

    if-eqz v2, :cond_0

    .line 201
    check-cast v1, Lcom/miui/home/launcher/upsidescene/SpriteView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/SpriteView;->gotoMoveMode()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyGadgets(I)V
    .locals 3

    .line 118
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 119
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 120
    instance-of v2, v1, Lcom/miui/home/launcher/upsidescene/SpriteView;

    if-eqz v2, :cond_0

    .line 121
    check-cast v1, Lcom/miui/home/launcher/upsidescene/SpriteView;

    .line 122
    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/upsidescene/SpriteView;->notifyGadget(I)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 102
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    .line 104
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 105
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p4

    const/16 p5, 0x8

    if-eq p4, p5, :cond_0

    .line 106
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Lcom/miui/home/launcher/upsidescene/FreeLayout$LayoutParams;

    .line 108
    iget p5, p4, Lcom/miui/home/launcher/upsidescene/FreeLayout$LayoutParams;->left:I

    .line 109
    iget p4, p4, Lcom/miui/home/launcher/upsidescene/FreeLayout$LayoutParams;->top:I

    .line 111
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p5

    .line 112
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p4

    .line 111
    invoke-virtual {p3, p5, p4, v0, v1}, Landroid/view/View;->layout(IIII)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 69
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 70
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 72
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 73
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/FreeLayout;->mScreenData:Lcom/miui/home/launcher/upsidescene/data/Screen;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/data/Screen;->getWidth()I

    move-result p1

    .line 77
    iget-object p2, p0, Lcom/miui/home/launcher/upsidescene/FreeLayout;->mScreenData:Lcom/miui/home/launcher/upsidescene/data/Screen;

    invoke-virtual {p2}, Lcom/miui/home/launcher/upsidescene/data/Screen;->getHeight()I

    move-result p2

    .line 80
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->setMeasuredDimension(II)V

    .line 82
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_2

    .line 84
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->measureChild(Landroid/view/View;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public removeSprite(Lcom/miui/home/launcher/upsidescene/SpriteView;)V
    .locals 3

    .line 169
    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SpriteView;->getSpriteData()Lcom/miui/home/launcher/upsidescene/data/Sprite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getFunction()Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/data/Function;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/FreeLayout;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getAppWidgetHost()Landroid/appwidget/AppWidgetHost;

    move-result-object v0

    .line 171
    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SpriteView;->getSpriteData()Lcom/miui/home/launcher/upsidescene/data/Sprite;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/data/Sprite;->getFunction()Lcom/miui/home/launcher/upsidescene/data/Function;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/upsidescene/data/Function$WidgetFunction;

    invoke-virtual {v1}, Lcom/miui/home/launcher/upsidescene/data/Function$WidgetFunction;->getId()I

    move-result v1

    .line 170
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SpriteView;->getContentView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/gadget/Gadget;

    if-eqz v0, :cond_1

    .line 173
    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SpriteView;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/gadget/Gadget;

    invoke-virtual {v0}, Lcom/miui/home/launcher/gadget/Gadget;->onDeleted()V

    .line 175
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/upsidescene/FreeLayout;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    invoke-virtual {v0}, Lcom/miui/home/launcher/upsidescene/SceneScreen;->getFreeStyle()Lcom/miui/home/launcher/upsidescene/data/FreeStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/upsidescene/FreeLayout;->mScreenData:Lcom/miui/home/launcher/upsidescene/data/Screen;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/SpriteView;->getSpriteData()Lcom/miui/home/launcher/upsidescene/data/Sprite;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/upsidescene/data/FreeStyle;->removeSprite(Lcom/miui/home/launcher/upsidescene/data/Screen;Lcom/miui/home/launcher/upsidescene/data/Sprite;)V

    .line 176
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public setSceneScreen(Lcom/miui/home/launcher/upsidescene/SceneScreen;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/FreeLayout;->mSceneScreen:Lcom/miui/home/launcher/upsidescene/SceneScreen;

    return-void
.end method

.method public setScreenData(Lcom/miui/home/launcher/upsidescene/data/Screen;)V
    .locals 1

    .line 54
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/FreeLayout;->mScreenData:Lcom/miui/home/launcher/upsidescene/data/Screen;

    .line 55
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/data/Screen;->getWidth()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 56
    invoke-virtual {p0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->removeAllViews()V

    .line 58
    iget-object p1, p0, Lcom/miui/home/launcher/upsidescene/FreeLayout;->mScreenData:Lcom/miui/home/launcher/upsidescene/data/Screen;

    invoke-virtual {p1}, Lcom/miui/home/launcher/upsidescene/data/Screen;->getSprites()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/upsidescene/data/Sprite;

    .line 59
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/upsidescene/FreeLayout;->addSpriteView(Lcom/miui/home/launcher/upsidescene/data/Sprite;)Lcom/miui/home/launcher/upsidescene/SpriteView;

    goto :goto_0

    :cond_0
    return-void
.end method
