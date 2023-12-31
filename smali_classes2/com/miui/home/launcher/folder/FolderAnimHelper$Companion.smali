.class public final Lcom/miui/home/launcher/folder/FolderAnimHelper$Companion;
.super Ljava/lang/Object;
.source "FolderAnimHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/folder/FolderAnimHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFolderAnimHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FolderAnimHelper.kt\ncom/miui/home/launcher/folder/FolderAnimHelper$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,367:1\n1819#2,2:368\n*E\n*S KotlinDebug\n*F\n+ 1 FolderAnimHelper.kt\ncom/miui/home/launcher/folder/FolderAnimHelper$Companion\n*L\n90#1,2:368\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderAnimHelper$Companion;-><init>()V

    return-void
.end method

.method private final isBgScaleTooBig(Landroid/view/View;)Z
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3f866666    # 1.05f

    mul-float/2addr p1, v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method


# virtual methods
.method public final getFolderAnimDamping(Z)F
    .locals 1

    .line 108
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isHighAnimationRate()Z

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p0, :cond_0

    return v0

    .line 110
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowAnimationRate()Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    const p0, 0x3f666666    # 0.9f

    goto :goto_0

    :cond_1
    const p0, 0x3f7d70a4    # 0.99f

    :goto_0
    return p0

    :cond_2
    return v0
.end method

.method public final getFolderAnimResponse(Z)F
    .locals 1

    .line 118
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isHighAnimationRate()Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const p0, 0x3e947ae1    # 0.29f

    goto :goto_0

    :cond_0
    const p0, 0x3e8f5c29    # 0.28f

    :goto_0
    return p0

    .line 120
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowAnimationRate()Z

    move-result p0

    const v0, 0x3e851eb8    # 0.26f

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const v0, 0x3e6147ae    # 0.22f

    :goto_1
    return v0

    :cond_3
    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/high16 v0, 0x3e800000    # 0.25f

    :goto_2
    return v0
.end method

.method public final scaleEachIcon(Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;Z)V
    .locals 5

    if-eqz p1, :cond_2

    .line 90
    invoke-virtual {p1}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->getMPvChildList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    check-cast p0, Ljava/lang/Iterable;

    .line 368
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    .line 91
    check-cast p1, Landroid/view/View;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 92
    sget-object v3, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    aput-object v3, v1, v2

    const v2, 0x3f828f5c    # 1.02f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    move v4, v2

    goto :goto_1

    :cond_0
    move v4, v3

    .line 93
    :goto_1
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v0

    const/4 v0, 0x2

    .line 94
    sget-object v4, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    aput-object v4, v1, v0

    const/4 v0, 0x3

    if-eqz p2, :cond_1

    goto :goto_2

    :cond_1
    move v2, v3

    .line 95
    :goto_2
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v0

    .line 91
    invoke-interface {p1, v1}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final scaleIconContainerBg(Landroid/view/View;Z)V
    .locals 6

    const/4 p0, 0x1

    new-array v0, p0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 69
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 71
    sget-object v3, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    aput-object v3, v2, v1

    const v1, 0x3f83d70a    # 1.03f

    const v3, 0x3f866666    # 1.05f

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    .line 73
    sget-object v5, Lcom/miui/home/launcher/folder/FolderAnimHelper;->Companion:Lcom/miui/home/launcher/folder/FolderAnimHelper$Companion;

    invoke-direct {v5, p1}, Lcom/miui/home/launcher/folder/FolderAnimHelper$Companion;->isBgScaleTooBig(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v4

    .line 72
    :goto_0
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v2, p0

    const/4 p0, 0x2

    .line 75
    sget-object v5, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    aput-object v5, v2, p0

    const/4 p0, 0x3

    if-eqz p2, :cond_3

    .line 77
    sget-object p2, Lcom/miui/home/launcher/folder/FolderAnimHelper;->Companion:Lcom/miui/home/launcher/folder/FolderAnimHelper$Companion;

    invoke-direct {p2, p1}, Lcom/miui/home/launcher/folder/FolderAnimHelper$Companion;->isBgScaleTooBig(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v4

    .line 76
    :goto_1
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v2, p0

    .line 70
    invoke-interface {v0, v2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void
.end method
