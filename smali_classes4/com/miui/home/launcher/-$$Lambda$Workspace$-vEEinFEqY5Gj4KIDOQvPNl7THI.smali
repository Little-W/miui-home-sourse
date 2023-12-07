.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Workspace$-vEEinFEqY5Gj4KIDOQvPNl7THI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Workspace$-vEEinFEqY5Gj4KIDOQvPNl7THI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Workspace$-vEEinFEqY5Gj4KIDOQvPNl7THI;

    invoke-direct {v0}, Lcom/miui/home/launcher/-$$Lambda$Workspace$-vEEinFEqY5Gj4KIDOQvPNl7THI;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/-$$Lambda$Workspace$-vEEinFEqY5Gj4KIDOQvPNl7THI;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Workspace$-vEEinFEqY5Gj4KIDOQvPNl7THI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/miui/home/launcher/Workspace;->lambda$isScreenHasClockWidget$0(Landroid/view/ViewGroup;)Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    return-object p0
.end method
