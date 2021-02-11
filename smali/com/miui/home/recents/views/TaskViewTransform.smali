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

    .line 182
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->setTranslationX(F)V

    .line 183
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->setTranslationY(F)V

    .line 184
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->setTranslationZ(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 185
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->setScaleX(F)V

    .line 186
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->setScaleY(F)V

    .line 187
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->setAlpha(F)V

    const/4 v0, 0x0

    .line 188
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

    .line 133
    iget-boolean v0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->visible:Z

    if-nez v0, :cond_0

    return-void

    .line 137
    :cond_0
    invoke-virtual {p3}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->isImmediate()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p4, :cond_1

    .line 138
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTranslationZ()F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/miui/home/recents/views/TaskViewTransform;->hasTranslationZChangedFrom(F)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 139
    iget p2, p0, Lcom/miui/home/recents/views/TaskViewTransform;->translationZ:F

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/views/TaskView;->setTranslationZ(F)V

    .line 148
    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskViewTransform;->hasRectChangedFrom(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 149
    iget-object p2, p0, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    float-to-int p2, p2

    iget-object p3, p0, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->top:F

    float-to-int p3, p3

    iget-object p4, p0, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget p4, p4, Landroid/graphics/RectF;->right:F

    float-to-int p4, p4

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-static {p1, p2, p3, p4, v0}, Lcom/android/systemui/shared/recents/system/ViewWrapper;->set(Landroid/view/View;IIII)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p4, :cond_3

    .line 153
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTranslationZ()F

    move-result p4

    invoke-virtual {p0, p4}, Lcom/miui/home/recents/views/TaskViewTransform;->hasTranslationZChangedFrom(F)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 154
    sget-object p4, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v3, v0, [F

    .line 155
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTranslationZ()F

    move-result v4

    aput v4, v3, v1

    iget v4, p0, Lcom/miui/home/recents/views/TaskViewTransform;->translationZ:F

    aput v4, v3, v2

    .line 154
    invoke-static {p1, p4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    const/4 v3, 0x3

    .line 156
    invoke-virtual {p3, v3, p4}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->apply(ILandroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_3
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/TaskViewTransform;->hasRectChangedFrom(Landroid/view/View;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 169
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

    .line 170
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 171
    iget-object v4, p0, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4, v3}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 172
    new-array v4, v2, [Landroid/animation/PropertyValuesHolder;

    sget-object v5, Lcom/miui/home/recents/views/TaskViewTransform;->LTRB:Landroid/util/Property;

    sget-object v6, Lcom/miui/home/recents/util/Utilities;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    new-array v0, v0, [Landroid/graphics/Rect;

    aput-object p4, v0, v1

    aput-object v3, v0, v2

    .line 173
    invoke-static {v5, v6, v0}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object p4

    aput-object p4, v4, v1

    .line 172
    invoke-static {p1, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const/4 p4, 0x6

    .line 175
    invoke-virtual {p3, p4, p1}, Lcom/android/systemui/shared/recents/utilities/AnimationProps;->apply(ILandroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public copyFrom(Lcom/miui/home/recents/views/TaskViewTransform;)V
    .locals 1

    .line 80
    iget v0, p1, Lcom/miui/home/recents/views/TaskViewTransform;->translationZ:F

    iput v0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->translationZ:F

    .line 81
    iget v0, p1, Lcom/miui/home/recents/views/TaskViewTransform;->scale:F

    iput v0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->scale:F

    .line 82
    iget v0, p1, Lcom/miui/home/recents/views/TaskViewTransform;->alpha:F

    iput v0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->alpha:F

    .line 83
    iget-boolean v0, p1, Lcom/miui/home/recents/views/TaskViewTransform;->visible:Z

    iput-boolean v0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->visible:Z

    .line 84
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget-object p1, p1, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public fillIn(Lcom/miui/home/recents/views/TaskView;)V
    .locals 4

    .line 69
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTranslationZ()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->translationZ:F

    .line 70
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->scale:F

    .line 71
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->alpha:F

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->visible:Z

    .line 73
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getBottom()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public hasRectChangedFrom(Landroid/view/View;)Z
    .locals 2

    .line 123
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

    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public hasTranslationZChangedFrom(F)Z
    .locals 1

    .line 119
    iget v0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->translationZ:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isSame(Lcom/miui/home/recents/views/TaskViewTransform;)Z
    .locals 2

    .line 91
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

    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget-object p1, p1, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    .line 95
    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 102
    iput v0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->translationZ:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 103
    iput v0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->scale:F

    .line 104
    iput v0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->alpha:F

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->visible:Z

    .line 106
    iget-object v0, p0, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "R: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " V: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/views/TaskViewTransform;->visible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
