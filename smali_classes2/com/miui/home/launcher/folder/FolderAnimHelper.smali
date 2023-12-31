.class public final Lcom/miui/home/launcher/folder/FolderAnimHelper;
.super Ljava/lang/Object;
.source "FolderAnimHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/folder/FolderAnimHelper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFolderAnimHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FolderAnimHelper.kt\ncom/miui/home/launcher/folder/FolderAnimHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,367:1\n1819#2,2:368\n734#2:370\n825#2,2:371\n1819#2,2:373\n*E\n*S KotlinDebug\n*F\n+ 1 FolderAnimHelper.kt\ncom/miui/home/launcher/folder/FolderAnimHelper\n*L\n171#1,2:368\n353#1:370\n353#1,2:371\n355#1,2:373\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/launcher/folder/FolderAnimHelper$Companion;


# instance fields
.field private animSet:Landroid/animation/AnimatorSet;

.field private isObjectAnimationEnd:Z

.field private springItemAnimList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/dynamicanimation/animation/SpringAnimation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/launcher/folder/FolderAnimHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/folder/FolderAnimHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/launcher/folder/FolderAnimHelper;->Companion:Lcom/miui/home/launcher/folder/FolderAnimHelper$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimHelper;->springItemAnimList:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$getSpringItemAnimList$p(Lcom/miui/home/launcher/folder/FolderAnimHelper;)Ljava/util/ArrayList;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderAnimHelper;->springItemAnimList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$onAnimationEnd(Lcom/miui/home/launcher/folder/FolderAnimHelper;Lcom/miui/home/launcher/FolderInfo;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/folder/FolderAnimHelper;->onAnimationEnd(Lcom/miui/home/launcher/FolderInfo;)V

    return-void
.end method

.method public static final synthetic access$setObjectAnimationEnd$p(Lcom/miui/home/launcher/folder/FolderAnimHelper;Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/miui/home/launcher/folder/FolderAnimHelper;->isObjectAnimationEnd:Z

    return-void
.end method

.method private final cancelAnimation()V
    .locals 4

    .line 351
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimHelper;->animSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimHelper;->springItemAnimList:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 370
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 371
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 354
    invoke-virtual {v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 372
    :cond_2
    check-cast v1, Ljava/util/List;

    .line 370
    check-cast v1, Ljava/lang/Iterable;

    .line 373
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 356
    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    goto :goto_1

    .line 359
    :cond_3
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderAnimHelper;->springItemAnimList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private final ensureLayoutState(ZLcom/miui/home/launcher/FolderGridView;Lcom/miui/home/launcher/FolderInfo;)V
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 177
    invoke-virtual {p2}, Lcom/miui/home/launcher/FolderGridView;->getChildCount()I

    move-result p3

    :goto_0
    if-ge p1, p3, :cond_1

    .line 178
    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/FolderGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "childView"

    .line 179
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {p3}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/FolderIcon;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method private final getFakeIconBaseAlpha()F
    .locals 1

    .line 271
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x3f19999a    # 0.6f

    return p0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method private final onAnimationEnd(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 0

    .line 363
    iget-boolean p1, p0, Lcom/miui/home/launcher/folder/FolderAnimHelper;->isObjectAnimationEnd:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderAnimHelper;->springItemAnimList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 364
    check-cast p1, Landroid/animation/AnimatorSet;

    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderAnimHelper;->animSet:Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method

.method private final prepareAlphaAnimWithDelay(IIZLandroid/view/View;II)V
    .locals 16

    .line 307
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 308
    div-int v1, p5, p6

    sub-int v1, p2, v1

    add-int/lit8 v1, v1, 0x1

    .line 306
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    .line 305
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3c75c28f    # 0.015f

    mul-float/2addr v0, v1

    move/from16 v2, p1

    int-to-float v2, v2

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    const/16 v1, 0x3e8

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz p3, :cond_0

    .line 311
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getAlpha()F

    move-result v6

    cmpg-float v6, v6, v5

    if-nez v6, :cond_0

    move-object/from16 v6, p4

    .line 312
    invoke-virtual {v6, v4}, Landroid/view/View;->setAlpha(F)V

    cmp-long v7, v0, v2

    if-lez v7, :cond_1

    .line 314
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    move-object/from16 v6, p4

    .line 317
    :cond_1
    :goto_0
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getAlpha()F

    move-result v9

    if-eqz p3, :cond_2

    move v10, v5

    goto :goto_1

    :cond_2
    move v10, v4

    :goto_1
    if-eqz p3, :cond_3

    const-wide/16 v4, 0x96

    goto :goto_2

    :cond_3
    const-wide/16 v4, 0x50

    :goto_2
    move-wide v11, v4

    if-eqz p3, :cond_4

    move-wide v13, v0

    goto :goto_3

    :cond_4
    move-wide v13, v2

    :goto_3
    if-eqz p3, :cond_5

    .line 319
    new-instance v0, Lmiuix/view/animation/SineEaseInInterpolator;

    invoke-direct {v0}, Lmiuix/view/animation/SineEaseInInterpolator;-><init>()V

    goto :goto_4

    :cond_5
    new-instance v0, Lmiuix/view/animation/SineEaseOutInterpolator;

    invoke-direct {v0}, Lmiuix/view/animation/SineEaseOutInterpolator;-><init>()V

    :goto_4
    check-cast v0, Landroid/view/animation/Interpolator;

    move-object v15, v0

    move-object/from16 v7, p0

    move-object/from16 v8, p4

    .line 317
    invoke-direct/range {v7 .. v15}, Lcom/miui/home/launcher/folder/FolderAnimHelper;->prepareAlphaObjectAnim(Landroid/view/View;FFJJLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method private final prepareAlphaObjectAnim(Landroid/view/View;FFJJLandroid/view/animation/Interpolator;)V
    .locals 3

    .line 287
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 p2, 0x1

    aput p3, v1, p2

    .line 285
    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-string p2, "alphaAnimator"

    .line 291
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p8, Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, p8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 292
    invoke-virtual {p1, p4, p5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 293
    invoke-virtual {p1, p6, p7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 294
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderAnimHelper;->animSet:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_0

    check-cast p1, Landroid/animation/Animator;

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_0
    return-void
.end method

.method private final prepareFolderIconAnim(Landroid/widget/ImageView;Lcom/miui/home/launcher/FolderInfo;Z)V
    .locals 12

    .line 251
    invoke-virtual {p2}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object v0

    const-string v1, "folderInfo.buddyIconView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    move-object v3, v0

    check-cast v3, Landroid/view/View;

    .line 254
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderIcon;->getAlpha()F

    move-result v4

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    move v5, v0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    move v5, v1

    :goto_0
    const/16 v1, 0x19

    const/16 v11, 0x50

    if-eqz p3, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v11

    :goto_1
    int-to-long v6, v2

    const-wide/16 v8, 0x0

    if-eqz p3, :cond_2

    .line 258
    new-instance v2, Lmiuix/view/animation/SineEaseInInterpolator;

    invoke-direct {v2}, Lmiuix/view/animation/SineEaseInInterpolator;-><init>()V

    goto :goto_2

    :cond_2
    new-instance v2, Lmiuix/view/animation/CubicEaseInInterpolator;

    invoke-direct {v2}, Lmiuix/view/animation/CubicEaseInInterpolator;-><init>()V

    :goto_2
    check-cast v2, Landroid/view/animation/Interpolator;

    move-object v10, v2

    move-object v2, p0

    .line 252
    invoke-direct/range {v2 .. v10}, Lcom/miui/home/launcher/folder/FolderAnimHelper;->prepareAlphaObjectAnim(Landroid/view/View;FFJJLandroid/view/animation/Interpolator;)V

    .line 261
    move-object v3, p1

    check-cast v3, Landroid/view/View;

    .line 262
    invoke-virtual {p1}, Landroid/widget/ImageView;->getAlpha()F

    move-result v4

    if-eqz p3, :cond_3

    goto :goto_3

    .line 263
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderAnimHelper;->getFakeIconBaseAlpha()F

    move-result v0

    :goto_3
    move v5, v0

    if-eqz p3, :cond_4

    goto :goto_4

    :cond_4
    move v1, v11

    :goto_4
    int-to-long v6, v1

    const-wide/16 v8, 0x0

    if-eqz p3, :cond_5

    .line 266
    new-instance v0, Lmiuix/view/animation/SineEaseInInterpolator;

    invoke-direct {v0}, Lmiuix/view/animation/SineEaseInInterpolator;-><init>()V

    goto :goto_5

    :cond_5
    new-instance v0, Lmiuix/view/animation/CubicEaseInInterpolator;

    invoke-direct {v0}, Lmiuix/view/animation/CubicEaseInInterpolator;-><init>()V

    :goto_5
    check-cast v0, Landroid/view/animation/Interpolator;

    move-object v10, v0

    move-object v2, p0

    .line 260
    invoke-direct/range {v2 .. v10}, Lcom/miui/home/launcher/folder/FolderAnimHelper;->prepareAlphaObjectAnim(Landroid/view/View;FFJJLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method private final prepareGridItemAnim(Lcom/miui/home/launcher/FolderGridView;Lcom/miui/home/launcher/FolderInfo;Z)V
    .locals 25

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 191
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/FolderGridView;->getNumColumns()I

    move-result v8

    .line 192
    iget v2, v1, Lcom/miui/home/launcher/FolderInfo;->itemType:I

    const-wide/16 v9, 0x32

    const-wide/16 v11, 0x50

    const/4 v3, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const-string v15, "childView"

    const/16 v4, 0x15

    if-ne v2, v4, :cond_5

    .line 193
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/FolderGridView;->getChildCount()I

    move-result v7

    move v6, v3

    :goto_0
    if-ge v6, v7, :cond_b

    .line 194
    rem-int v2, v6, v8

    .line 195
    div-int v3, v6, v8

    .line 196
    invoke-virtual {v0, v6}, Lcom/miui/home/launcher/FolderGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const/4 v1, 0x2

    if-ge v2, v1, :cond_4

    if-ge v3, v1, :cond_4

    .line 199
    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 200
    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpg-float v1, v1, v14

    if-nez v1, :cond_0

    move/from16 v18, v13

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v1

    move/from16 v18, v1

    :goto_1
    if-eqz p3, :cond_1

    move/from16 v19, v14

    goto :goto_2

    :cond_1
    move/from16 v19, v13

    :goto_2
    if-eqz p3, :cond_2

    move-wide/from16 v20, v9

    goto :goto_3

    :cond_2
    move-wide/from16 v20, v11

    :goto_3
    const-wide/16 v22, 0x0

    if-eqz p3, :cond_3

    .line 204
    new-instance v1, Lmiuix/view/animation/SineEaseOutInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/SineEaseOutInterpolator;-><init>()V

    goto :goto_4

    :cond_3
    new-instance v1, Lcom/miui/home/launcher/animate/MAMLInterpolater$CubicEaseInInterpolater;

    invoke-direct {v1}, Lcom/miui/home/launcher/animate/MAMLInterpolater$CubicEaseInInterpolater;-><init>()V

    :goto_4
    check-cast v1, Landroid/view/animation/Interpolator;

    move-object/from16 v24, v1

    move-object/from16 v16, p0

    move-object/from16 v17, v5

    .line 198
    invoke-direct/range {v16 .. v24}, Lcom/miui/home/launcher/folder/FolderAnimHelper;->prepareAlphaObjectAnim(Landroid/view/View;FFJJLandroid/view/animation/Interpolator;)V

    move/from16 v17, v6

    move/from16 v16, v7

    goto :goto_5

    .line 211
    :cond_4
    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/FolderGridView;->getChildCount()I

    move-result v16

    move-object/from16 v1, p0

    move/from16 v4, p3

    move/from16 v17, v6

    move/from16 v6, v16

    move/from16 v16, v7

    move v7, v8

    .line 207
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/folder/FolderAnimHelper;->prepareAlphaAnimWithDelay(IIZLandroid/view/View;II)V

    :goto_5
    add-int/lit8 v6, v17, 0x1

    move/from16 v7, v16

    goto :goto_0

    .line 218
    :cond_5
    iget-object v1, v1, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    const-string v2, "folderInfo.icon"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/miui/home/launcher/Folder$FolderCallback;->getPreviewCount()I

    move-result v7

    .line 219
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/FolderGridView;->getChildCount()I

    move-result v6

    move v5, v3

    :goto_6
    if-ge v5, v6, :cond_b

    .line 220
    invoke-virtual {v0, v5}, Lcom/miui/home/launcher/FolderGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ge v5, v7, :cond_a

    .line 223
    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_6

    .line 224
    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpg-float v1, v1, v14

    if-nez v1, :cond_6

    move/from16 v18, v13

    goto :goto_7

    :cond_6
    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v1

    move/from16 v18, v1

    :goto_7
    if-eqz p3, :cond_7

    move/from16 v19, v14

    goto :goto_8

    :cond_7
    move/from16 v19, v13

    :goto_8
    if-eqz p3, :cond_8

    move-wide/from16 v20, v9

    goto :goto_9

    :cond_8
    move-wide/from16 v20, v11

    :goto_9
    const-wide/16 v22, 0x0

    if-eqz p3, :cond_9

    .line 228
    new-instance v1, Lmiuix/view/animation/SineEaseOutInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/SineEaseOutInterpolator;-><init>()V

    goto :goto_a

    :cond_9
    new-instance v1, Lcom/miui/home/launcher/animate/MAMLInterpolater$CubicEaseInInterpolater;

    invoke-direct {v1}, Lcom/miui/home/launcher/animate/MAMLInterpolater$CubicEaseInInterpolater;-><init>()V

    :goto_a
    check-cast v1, Landroid/view/animation/Interpolator;

    move-object/from16 v24, v1

    move-object/from16 v16, p0

    move-object/from16 v17, v4

    .line 222
    invoke-direct/range {v16 .. v24}, Lcom/miui/home/launcher/folder/FolderAnimHelper;->prepareAlphaObjectAnim(Landroid/view/View;FFJJLandroid/view/animation/Interpolator;)V

    move/from16 v18, v5

    move/from16 v17, v6

    move/from16 v16, v7

    goto :goto_b

    .line 231
    :cond_a
    rem-int v2, v5, v8

    .line 232
    div-int v3, v5, v8

    .line 237
    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/FolderGridView;->getChildCount()I

    move-result v16

    move-object/from16 v1, p0

    move-object/from16 v17, v4

    move/from16 v4, p3

    move/from16 v18, v5

    move-object/from16 v5, v17

    move/from16 v17, v6

    move/from16 v6, v16

    move/from16 v16, v7

    move v7, v8

    .line 233
    invoke-direct/range {v1 .. v7}, Lcom/miui/home/launcher/folder/FolderAnimHelper;->prepareAlphaAnimWithDelay(IIZLandroid/view/View;II)V

    :goto_b
    add-int/lit8 v5, v18, 0x1

    move/from16 v7, v16

    move/from16 v6, v17

    goto :goto_6

    :cond_b
    return-void
.end method

.method private final prepareSpringAnimation(ZLandroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;FFFFFFLcom/miui/home/launcher/FolderInfo;)V
    .locals 1

    .line 328
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    check-cast p3, Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v0, p2, p3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    if-eqz p1, :cond_0

    .line 334
    invoke-static {p5}, Lcom/miui/home/launcher/animate/SpringAnimator;->stiffnessConvert(F)F

    move-result p1

    .line 331
    invoke-static {p6, p4, p1}, Lcom/miui/home/launcher/animate/SpringAnimator;->getSpringForce(FFF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    goto :goto_0

    .line 340
    :cond_0
    invoke-static {p8}, Lcom/miui/home/launcher/animate/SpringAnimator;->stiffnessConvert(F)F

    move-result p1

    .line 337
    invoke-static {p9, p7, p1}, Lcom/miui/home/launcher/animate/SpringAnimator;->getSpringForce(FFF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 343
    :goto_0
    new-instance p1, Lcom/miui/home/launcher/folder/FolderAnimHelper$prepareSpringAnimation$1;

    invoke-direct {p1, p0, v0, p10}, Lcom/miui/home/launcher/folder/FolderAnimHelper$prepareSpringAnimation$1;-><init>(Lcom/miui/home/launcher/folder/FolderAnimHelper;Landroidx/dynamicanimation/animation/SpringAnimation;Lcom/miui/home/launcher/FolderInfo;)V

    check-cast p1, Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 347
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderAnimHelper;->springItemAnimList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final startFolderAnim(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/FolderGridView;Landroid/widget/ImageView;Landroid/view/View;Z)V
    .locals 16

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move/from16 v15, p5

    const-string v0, "folderInfo"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "folderGridView"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fakeIcon"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "titleView"

    move-object/from16 v2, p4

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/launcher/folder/FolderAnimHelper;->cancelAnimation()V

    .line 140
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, v11, Lcom/miui/home/launcher/folder/FolderAnimHelper;->animSet:Landroid/animation/AnimatorSet;

    .line 141
    iget-object v0, v11, Lcom/miui/home/launcher/folder/FolderAnimHelper;->animSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/miui/home/launcher/folder/FolderAnimHelper$startFolderAnim$1;

    invoke-direct {v1, v11, v12}, Lcom/miui/home/launcher/folder/FolderAnimHelper$startFolderAnim$1;-><init>(Lcom/miui/home/launcher/folder/FolderAnimHelper;Lcom/miui/home/launcher/FolderInfo;)V

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 161
    :cond_0
    invoke-direct {v11, v15, v13, v12}, Lcom/miui/home/launcher/folder/FolderAnimHelper;->ensureLayoutState(ZLcom/miui/home/launcher/FolderGridView;Lcom/miui/home/launcher/FolderInfo;)V

    .line 163
    sget-object v3, Landroidx/dynamicanimation/animation/SpringAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const-string v0, "SpringAnimation.ALPHA"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x3f733333    # 0.95f

    const v5, 0x3ea3d70a    # 0.32f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f733333    # 0.95f

    const v8, 0x3e4ccccd    # 0.2f

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p5

    move-object/from16 v2, p4

    move-object/from16 v10, p1

    invoke-direct/range {v0 .. v10}, Lcom/miui/home/launcher/folder/FolderAnimHelper;->prepareSpringAnimation(ZLandroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;FFFFFFLcom/miui/home/launcher/FolderInfo;)V

    .line 167
    invoke-direct {v11, v13, v12, v15}, Lcom/miui/home/launcher/folder/FolderAnimHelper;->prepareGridItemAnim(Lcom/miui/home/launcher/FolderGridView;Lcom/miui/home/launcher/FolderInfo;Z)V

    .line 169
    invoke-direct {v11, v14, v12, v15}, Lcom/miui/home/launcher/folder/FolderAnimHelper;->prepareFolderIconAnim(Landroid/widget/ImageView;Lcom/miui/home/launcher/FolderInfo;Z)V

    .line 171
    iget-object v0, v11, Lcom/miui/home/launcher/folder/FolderAnimHelper;->springItemAnimList:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 368
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 171
    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    goto :goto_0

    .line 172
    :cond_1
    iget-object v0, v11, Lcom/miui/home/launcher/folder/FolderAnimHelper;->animSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_2
    return-void
.end method
