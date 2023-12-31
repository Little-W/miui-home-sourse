.class Lcom/miui/maml/ScreenElementRoot$FramerateHelper;
.super Ljava/lang/Object;
.source "ScreenElementRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ScreenElementRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FramerateHelper"
.end annotation


# instance fields
.field private mFramerateText:Ljava/lang/String;

.field private mPaint:Landroid/text/TextPaint;

.field private mRealFrameRate:I

.field private mShowingFramerate:I

.field private mTextX:I

.field private mTextY:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0xa

    const/high16 v1, -0x10000

    const/16 v2, 0xe

    .line 225
    invoke-direct {p0, v1, v2, v0, v0}, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;->mPaint:Landroid/text/TextPaint;

    .line 229
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 230
    iget-object p1, p0, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;->mPaint:Landroid/text/TextPaint;

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 231
    iput p3, p0, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;->mTextX:I

    .line 232
    iput p4, p0, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;->mTextY:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;->mFramerateText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;->mShowingFramerate:I

    iget v1, p0, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;->mRealFrameRate:I

    if-eq v0, v1, :cond_1

    .line 237
    :cond_0
    iget v0, p0, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;->mRealFrameRate:I

    iput v0, p0, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;->mShowingFramerate:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 238
    iget v2, p0, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;->mShowingFramerate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "FPS %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;->mFramerateText:Ljava/lang/String;

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;->mFramerateText:Ljava/lang/String;

    iget v1, p0, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;->mTextX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;->mTextY:I

    int-to-float v2, v2

    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public set(I)V
    .locals 0

    .line 244
    iput p1, p0, Lcom/miui/maml/ScreenElementRoot$FramerateHelper;->mRealFrameRate:I

    return-void
.end method
