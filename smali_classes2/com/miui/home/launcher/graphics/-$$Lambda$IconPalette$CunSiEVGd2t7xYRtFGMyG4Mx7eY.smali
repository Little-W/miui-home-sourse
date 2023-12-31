.class public final synthetic Lcom/miui/home/launcher/graphics/-$$Lambda$IconPalette$CunSiEVGd2t7xYRtFGMyG4Mx7eY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/palette/graphics/Palette$Filter;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/graphics/-$$Lambda$IconPalette$CunSiEVGd2t7xYRtFGMyG4Mx7eY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/graphics/-$$Lambda$IconPalette$CunSiEVGd2t7xYRtFGMyG4Mx7eY;

    invoke-direct {v0}, Lcom/miui/home/launcher/graphics/-$$Lambda$IconPalette$CunSiEVGd2t7xYRtFGMyG4Mx7eY;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/graphics/-$$Lambda$IconPalette$CunSiEVGd2t7xYRtFGMyG4Mx7eY;->INSTANCE:Lcom/miui/home/launcher/graphics/-$$Lambda$IconPalette$CunSiEVGd2t7xYRtFGMyG4Mx7eY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isAllowed(I[F)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/miui/home/launcher/graphics/IconPalette;->lambda$setupIconColorTypeSync$7(I[F)Z

    move-result p0

    return p0
.end method
