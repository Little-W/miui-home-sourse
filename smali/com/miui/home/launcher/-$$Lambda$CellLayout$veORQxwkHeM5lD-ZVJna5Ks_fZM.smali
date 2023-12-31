.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$CellLayout$veORQxwkHeM5lD-ZVJna5Ks_fZM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/-$$Lambda$CellLayout$veORQxwkHeM5lD-ZVJna5Ks_fZM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$veORQxwkHeM5lD-ZVJna5Ks_fZM;

    invoke-direct {v0}, Lcom/miui/home/launcher/-$$Lambda$CellLayout$veORQxwkHeM5lD-ZVJna5Ks_fZM;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/-$$Lambda$CellLayout$veORQxwkHeM5lD-ZVJna5Ks_fZM;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$CellLayout$veORQxwkHeM5lD-ZVJna5Ks_fZM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/home/launcher/CellLayout$Widget;

    check-cast p2, Lcom/miui/home/launcher/CellLayout$Widget;

    invoke-static {p1, p2}, Lcom/miui/home/launcher/CellLayout;->lambda$predictWidgetCanBeAdded$7(Lcom/miui/home/launcher/CellLayout$Widget;Lcom/miui/home/launcher/CellLayout$Widget;)I

    move-result p0

    return p0
.end method
