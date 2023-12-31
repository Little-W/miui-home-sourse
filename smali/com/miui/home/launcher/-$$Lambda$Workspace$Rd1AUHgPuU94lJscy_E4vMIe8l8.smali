.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Workspace$Rd1AUHgPuU94lJscy_E4vMIe8l8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Workspace$Rd1AUHgPuU94lJscy_E4vMIe8l8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Workspace$Rd1AUHgPuU94lJscy_E4vMIe8l8;

    invoke-direct {v0}, Lcom/miui/home/launcher/-$$Lambda$Workspace$Rd1AUHgPuU94lJscy_E4vMIe8l8;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/-$$Lambda$Workspace$Rd1AUHgPuU94lJscy_E4vMIe8l8;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Workspace$Rd1AUHgPuU94lJscy_E4vMIe8l8;

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

    check-cast p1, Lcom/miui/home/launcher/oldman/QuickCallCellLayout;

    invoke-static {p1}, Lcom/miui/home/launcher/Workspace;->lambda$showQuickCallCellLayoutTitle$7(Lcom/miui/home/launcher/oldman/QuickCallCellLayout;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
