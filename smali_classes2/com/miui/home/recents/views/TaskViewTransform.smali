.class public Lcom/miui/home/recents/views/TaskViewTransform;
.super Ljava/lang/Object;
.source "TaskViewTransform.java"


# static fields
.field public static final LTRB:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public alpha:F

.field public rect:Landroid/graphics/RectF;

.field public scale:F

.field public translationZ:F

.field public viewOutlineAlpha:F

.field public visible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    new-instance v0, Lcom/miui/home/recents/views/TaskViewTransform$1;

    const-class v1, Landroid/graphics/Rect;

    const-string v2, "leftTopRightBottom"

    invoke-direct {v0, v1, v2}, Lcom/miui/home/recents/views/TaskViewTransform$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/recents/views/TaskViewTransform;->LTRB:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->translationZ:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 56
    iput v1, p0, Lcom/miui/home/recents/views/TaskViewTransform;->scale:F

    .line 57
    iput v1, p0, Lcom/miui/home/recents/views/TaskViewTransform;->alpha:F

    .line 58
    iput v0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->viewOutlineAlpha:F

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->visible:Z

    .line 63
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    return-void
.end method

.method public static reset(Lcom/miui/home/recents/views/TaskView;)V
    .locals 1

    const/4 v0, 0x0

    .line 186
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->setTranslationX(F)V

    .line 187
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->setTranslationY(F)V

    .line 188
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->setTranslationZ(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 189
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->setScaleX(F)V

    .line 190
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->setScaleY(F)V

    .line 191
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->setAlpha(F)V

    const/4 v0, 0x0

    .line 192
    invoke-static {p0, v0, v0, v0, v0}, Lcom/android/systemui/shared/recents/system/ViewWrapper;->set(Landroid/view/View;IIII)V

    return-void
.end method


# virtual methods
.method public applyToTaskView(Lcom/miui/home/recents/views/TaskView;Ljava/util/ArrayList;Lcom/android/systemui/shared/recents/utilities/AnimationProps;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/recents/views/TaskView;",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;",
            "Lcom/android/systemui/shared/recents/utilities/AnimationProps;",
            "Z)V"
        }
    .end annotation

    .line 137
    iget-boolean v0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->visible:Z

    if-nez v0, :cond_0

    return-void

    .line 141
    :cond_0
    invoke-virtual {p3}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->isImmediate()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p4, :cond_1

    .line 142
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTranslationZ()F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/miui/home/recents/views/TaskViewTransform;->hasTranslationZChangedFrom(F)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 143
    iget p2, p0, Lcom/miui/home/recents/views/TaskViewTransform;->translationZ:F

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/views/TaskView;->setTranslationZ(F)V

    .line 152
    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskViewTransform;->hasRectChangedFrom(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 153
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->floor(D)D

    move-result-wide p2

    double-to-int p2, p2

    iget-object p3, p0, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->top:F

    float-to-double p3, p3

    invoke-static {p3, p4}, Ljava/lang/Math;->floor(D)D

    move-result-wide p3

    double-to-int p3, p3

    iget-object p4, p0, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget p4, p4, Landroid/graphics/RectF;->right:F

    float-to-double v0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p4, v0

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    float-to-double v0, p0

    .line 154
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p0, v0

    .line 153
    invoke-static {p1, p2, p3, p4, p0}, Lcom/android/systemui/shared/recents/system/ViewWrapper;->set(Landroid/view/View;IIII)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p4, :cond_3

    .line 157
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTranslationZ()F

    move-result p4

    invoke-virtual {p0, p4}, Lcom/miui/home/recents/views/TaskViewTransform;->hasTranslationZChangedFrom(F)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 158
    sget-object p4, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v3, v0, [F

    .line 159
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTranslationZ()F

    move-result v4

    aput v4, v3, v1

    iget v4, p0, Lcom/miui/home/recents/views/TaskViewTransform;->translationZ:F

    aput v4, v3, v2

    .line 158
    invoke-static {p1, p4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    const/4 v3, 0x3

    .line 160
    invoke-virtual {p3, v3, p4}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->apply(ILandroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_3
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskViewTransform;->hasRectChangedFrom(Landroid/view/View;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 173
    new-instance p4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTop()I

    move-result v4

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getRight()I

    move-result v5

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getBottom()I

    move-result v6

    invoke-direct {p4, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 174
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 175
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0, v3}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    new-array p0, v2, [Landroid/animation/PropertyValuesHolder;

    .line 176
    sget-object v4, Lcom/miui/home/recents/views/TaskViewTransform;->LTRB:Landroid/util/Property;

    sget-object v5, Lcom/miui/home/recents/util/Utilities;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    new-array v0, v0, [Landroid/graphics/Rect;

    aput-object p4, v0, v1

    aput-object v3, v0, v2

    .line 177
    invoke-static {v4, v5, v0}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object p4

    aput-object p4, p0, v1

    .line 176
    invoke-static {p1, p0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const/4 p1, 0x6

    .line 179
    invoke-virtual {p3, p1, p0}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->apply(ILandroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public copyFrom(Lcom/miui/home/recents/views/TaskViewTransform;)V
    .locals 1

    .line 84
    iget v0, p1, Lcom/miui/home/recents/views/TaskViewTransform;->translationZ:F

    iput v0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->translationZ:F

    .line 85
    iget v0, p1, Lcom/miui/home/recents/views/TaskViewTransform;->scale:F

    iput v0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->scale:F

    .line 86
    iget v0, p1, Lcom/miui/home/recents/views/TaskViewTransform;->alpha:F

    iput v0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->alpha:F

    .line 87
    iget-boolean v0, p1, Lcom/miui/home/recents/views/TaskViewTransform;->visible:Z

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewTransform;->setVisible(Z)V

    .line 88
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget-object p1, p1, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public fillIn(Lcom/miui/home/recents/views/TaskView;)V
    .locals 3

    .line 73
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTranslationZ()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->translationZ:F

    .line 74
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->scale:F

    .line 75
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->alpha:F

    const/4 v0, 0x1

    .line 76
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewTransform;->setVisible(Z)V

    .line 77
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getRight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getBottom()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public hasRectChangedFrom(Landroid/view/View;)Z
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    float-to-int p0, p0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public hasTranslationZChangedFrom(F)Z
    .locals 0

    .line 123
    iget p0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->translationZ:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSame(Lcom/miui/home/recents/views/TaskViewTransform;)Z
    .locals 2

    .line 95
    iget v0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->translationZ:F

    iget v1, p1, Lcom/miui/home/recents/views/TaskViewTransform;->translationZ:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->scale:F

    iget v1, p1, Lcom/miui/home/recents/views/TaskViewTransform;->scale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p1, Lcom/miui/home/recents/views/TaskViewTransform;->alpha:F

    iget v1, p0, Lcom/miui/home/recents/views/TaskViewTransform;->alpha:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->visible:Z

    iget-boolean v1, p1, Lcom/miui/home/recents/views/TaskViewTransform;->visible:Z

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget-object p1, p1, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    .line 99
    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 106
    iput v0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->translationZ:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 107
    iput v0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->scale:F

    .line 108
    iput v0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->alpha:F

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskViewTransform;->setVisible(Z)V

    .line 110
    iget-object p0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->setEmpty()V

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/miui/home/recents/views/TaskViewTransform;->visible:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "R: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " V: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->visible:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
