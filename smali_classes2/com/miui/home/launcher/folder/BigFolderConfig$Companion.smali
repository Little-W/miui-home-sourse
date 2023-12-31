.class public final Lcom/miui/home/launcher/folder/BigFolderConfig$Companion;
.super Ljava/lang/Object;
.source "BigFolderConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/folder/BigFolderConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBigFolderConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BigFolderConfig.kt\ncom/miui/home/launcher/folder/BigFolderConfig$Companion\n*L\n1#1,40:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/BigFolderConfig$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final bigFolderIconHeight(Landroid/content/Context;II)I
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    .line 32
    invoke-static {p2, p3, p0}, Lcom/miui/home/launcher/DeviceConfig;->getMiuiWidgetSizeSpec(IIZ)J

    move-result-wide p2

    .line 33
    invoke-static {p1}, Lcom/miui/home/launcher/MIUIWidgetUtil;->getMiuiWidgetPadding(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p0

    long-to-int p1, p2

    .line 34
    iget p2, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p2

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final bigFolderPaddingTop()I
    .locals 0

    .line 27
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getMiuiWidgetPaddingTop()I

    move-result p0

    return p0
.end method
