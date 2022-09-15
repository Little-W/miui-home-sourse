.class public final synthetic Lcom/miui/home/launcher/common/-$$Lambda$Utilities$9hvRib7GeyRBhZGE0_5KZMm_row;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/common/-$$Lambda$Utilities$9hvRib7GeyRBhZGE0_5KZMm_row;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/common/-$$Lambda$Utilities$9hvRib7GeyRBhZGE0_5KZMm_row;

    invoke-direct {v0}, Lcom/miui/home/launcher/common/-$$Lambda$Utilities$9hvRib7GeyRBhZGE0_5KZMm_row;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/common/-$$Lambda$Utilities$9hvRib7GeyRBhZGE0_5KZMm_row;->INSTANCE:Lcom/miui/home/launcher/common/-$$Lambda$Utilities$9hvRib7GeyRBhZGE0_5KZMm_row;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->lambda$updatemIncompatibleAppList$2(Ljava/util/List;)V

    return-void
.end method
