.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Workspace$NFpkAoQl-r10PVfxO0lvNpmRxZU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava8/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Workspace$NFpkAoQl-r10PVfxO0lvNpmRxZU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Workspace$NFpkAoQl-r10PVfxO0lvNpmRxZU;

    invoke-direct {v0}, Lcom/miui/home/launcher/-$$Lambda$Workspace$NFpkAoQl-r10PVfxO0lvNpmRxZU;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/-$$Lambda$Workspace$NFpkAoQl-r10PVfxO0lvNpmRxZU;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Workspace$NFpkAoQl-r10PVfxO0lvNpmRxZU;

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

    invoke-static {p1}, Lcom/miui/home/launcher/Workspace;->lambda$showAddContactButtonInQuickCallCellLayout$6(Lcom/miui/home/launcher/oldman/QuickCallCellLayout;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
