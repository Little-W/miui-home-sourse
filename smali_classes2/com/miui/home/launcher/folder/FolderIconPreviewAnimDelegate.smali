.class public final Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate;
.super Lcom/miui/home/launcher/folder/BaseRecycleAbleFolmeAnim;
.source "FolderIconPreviewAnimDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate$LoadItemIconsTransitionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFolderIconPreviewAnimDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FolderIconPreviewAnimDelegate.kt\ncom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,135:1\n1828#2,3:136\n1828#2,3:139\n*E\n*S KotlinDebug\n*F\n+ 1 FolderIconPreviewAnimDelegate.kt\ncom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate\n*L\n44#1,3:136\n66#1,3:139\n*E\n"
.end annotation


# instance fields
.field private final mHideAnimConfig:Lmiuix/animation/base/AnimConfig;

.field private final mHideState:Lmiuix/animation/controller/AnimState;

.field private final mShowAnimAlphaConfig:Lmiuix/animation/base/AnimSpecialConfig;

.field private final mShowAnimScaleConfig:Lmiuix/animation/base/AnimSpecialConfig;

.field private final mShowState:Lmiuix/animation/controller/AnimState;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 16
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/BaseRecycleAbleFolmeAnim;-><init>()V

    .line 18
    new-instance v0, Lmiuix/animation/base/AnimSpecialConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 19
    fill-array-data v2, :array_0

    const/4 v3, -0x2

    invoke-virtual {v0, v3, v2}, Lmiuix/animation/base/AnimSpecialConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type miuix.animation.base.AnimSpecialConfig"

    if-eqz v0, :cond_1

    check-cast v0, Lmiuix/animation/base/AnimSpecialConfig;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate;->mShowAnimAlphaConfig:Lmiuix/animation/base/AnimSpecialConfig;

    .line 21
    new-instance v0, Lmiuix/animation/base/AnimSpecialConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    new-array v4, v1, [F

    .line 22
    fill-array-data v4, :array_1

    invoke-virtual {v0, v3, v4}, Lmiuix/animation/base/AnimSpecialConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lmiuix/animation/base/AnimSpecialConfig;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate;->mShowAnimScaleConfig:Lmiuix/animation/base/AnimSpecialConfig;

    .line 24
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v1, v1, [F

    .line 25
    fill-array-data v1, :array_2

    invoke-virtual {v0, v3, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    const-string v1, "AnimConfig()\n        .se\u2026.SPRING_PHY, 0.95f, 0.2f)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate;->mHideAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 26
    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string v1, "hide_preview_icon"

    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 27
    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v4, v3, [J

    invoke-virtual {v0, v1, v2, v4}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    .line 28
    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    new-array v2, v3, [J

    const v4, 0x3f666666    # 0.9f

    invoke-virtual {v0, v1, v4, v2}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    .line 29
    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    new-array v2, v3, [J

    invoke-virtual {v0, v1, v4, v2}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate;->mHideState:Lmiuix/animation/controller/AnimState;

    .line 30
    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string v1, "show_preview_icon"

    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 31
    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    new-array v2, v3, [J

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v4, v2}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    .line 32
    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    new-array v2, v3, [J

    invoke-virtual {v0, v1, v4, v2}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    .line 33
    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    new-array v2, v3, [J

    invoke-virtual {v0, v1, v4, v2}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate;->mShowState:Lmiuix/animation/controller/AnimState;

    return-void

    .line 22
    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :cond_1
    new-instance p0, Lkotlin/TypeCastException;

    invoke-direct {p0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
    .end array-data

    :array_1
    .array-data 4
        0x3f266666    # 0.65f
        0x3e99999a    # 0.3f
    .end array-data

    :array_2
    .array-data 4
        0x3f733333    # 0.95f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method


# virtual methods
.method public final hidePreviewIcon(Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;Ljava/util/List;Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/IconCache;ZLcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;Z)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/folder/FolderPreviewIconView;",
            ">;",
            "Lcom/miui/home/launcher/FolderInfo;",
            "Lcom/miui/home/launcher/IconCache;",
            "Z",
            "Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    const-string v0, "preview"

    move-object/from16 v10, p1

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mPvChildList"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    move-object/from16 v11, p3

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconCache"

    move-object/from16 v12, p4

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialExecutor"

    move-object/from16 v13, p6

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    move-object v0, v9

    check-cast v0, Ljava/lang/Iterable;

    .line 137
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v16, v7, 0x1

    if-gez v7, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    move-object/from16 v17, v0

    check-cast v17, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    .line 45
    iget-object v6, v8, Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate;->mHideAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 46
    new-instance v18, Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate$LoadItemIconsTransitionListener;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object v15, v6

    move-object/from16 v6, p6

    move v9, v7

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate$LoadItemIconsTransitionListener;-><init>(Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate;Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/IconCache;ZLcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;Z)V

    .line 55
    move-object/from16 v0, v18

    check-cast v0, Lmiuix/animation/listener/TransitionListener;

    invoke-virtual {v8, v15, v0}, Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate;->stash(Lmiuix/animation/base/AnimConfig;Lmiuix/animation/listener/TransitionListener;)V

    .line 56
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v9, v1, :cond_1

    .line 57
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v3, -0x2

    const/4 v4, 0x2

    new-array v4, v4, [F

    .line 58
    fill-array-data v4, :array_0

    invoke-virtual {v1, v3, v4}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    new-array v3, v2, [Lmiuix/animation/listener/TransitionListener;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 59
    invoke-virtual {v1, v3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v6

    const-string v0, "AnimConfig()\n           \u2026  .addListeners(listener)"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v15, v6

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    new-array v0, v2, [Landroid/view/View;

    .line 61
    check-cast v17, Landroid/view/View;

    aput-object v17, v0, v4

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    iget-object v1, v8, Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate;->mHideState:Lmiuix/animation/controller/AnimState;

    new-array v2, v2, [Lmiuix/animation/base/AnimConfig;

    aput-object v15, v2, v4

    invoke-interface {v0, v1, v2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-object/from16 v9, p2

    move/from16 v7, v16

    goto :goto_0

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method public final showPreviewIcon(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/folder/FolderPreviewIconView;",
            ">;)V"
        }
    .end annotation

    const-string v0, "mPvChildList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    check-cast p1, Ljava/lang/Iterable;

    .line 140
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v2, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    .line 67
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    sget-object v4, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    check-cast v4, Lmiuix/animation/property/FloatProperty;

    iget-object v5, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate;->mShowAnimScaleConfig:Lmiuix/animation/base/AnimSpecialConfig;

    invoke-virtual {v1, v4, v5}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    .line 68
    sget-object v4, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    check-cast v4, Lmiuix/animation/property/FloatProperty;

    iget-object v5, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate;->mShowAnimScaleConfig:Lmiuix/animation/base/AnimSpecialConfig;

    invoke-virtual {v1, v4, v5}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    .line 69
    sget-object v4, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    check-cast v4, Lmiuix/animation/property/FloatProperty;

    iget-object v5, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate;->mShowAnimAlphaConfig:Lmiuix/animation/base/AnimSpecialConfig;

    invoke-virtual {v1, v4, v5}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    const/4 v4, 0x1

    new-array v5, v4, [Landroid/view/View;

    .line 70
    check-cast v2, Landroid/view/View;

    aput-object v2, v5, v0

    invoke-static {v5}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v2

    invoke-interface {v2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v2

    iget-object v5, p0, Lcom/miui/home/launcher/folder/FolderIconPreviewAnimDelegate;->mShowState:Lmiuix/animation/controller/AnimState;

    new-array v4, v4, [Lmiuix/animation/base/AnimConfig;

    aput-object v1, v4, v0

    invoke-interface {v2, v5, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move v1, v3

    goto :goto_0

    :cond_1
    return-void
.end method
