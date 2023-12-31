.class public final synthetic Lcom/miui/home/launcher/graphics/-$$Lambda$IconPalette$jwiQjJu_j95MwjvWBPNyKgaWTWI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex2/functions/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/graphics/-$$Lambda$IconPalette$jwiQjJu_j95MwjvWBPNyKgaWTWI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/graphics/-$$Lambda$IconPalette$jwiQjJu_j95MwjvWBPNyKgaWTWI;

    invoke-direct {v0}, Lcom/miui/home/launcher/graphics/-$$Lambda$IconPalette$jwiQjJu_j95MwjvWBPNyKgaWTWI;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/graphics/-$$Lambda$IconPalette$jwiQjJu_j95MwjvWBPNyKgaWTWI;->INSTANCE:Lcom/miui/home/launcher/graphics/-$$Lambda$IconPalette$jwiQjJu_j95MwjvWBPNyKgaWTWI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/miui/home/launcher/AppInfo;

    invoke-static {p1}, Lcom/miui/home/launcher/graphics/IconPalette;->lambda$setupIconColorType$4(Lcom/miui/home/launcher/AppInfo;)Z

    move-result p0

    return p0
.end method
