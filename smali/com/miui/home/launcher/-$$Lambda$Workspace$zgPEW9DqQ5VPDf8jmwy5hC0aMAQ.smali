.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Workspace$zgPEW9DqQ5VPDf8jmwy5hC0aMAQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Workspace$zgPEW9DqQ5VPDf8jmwy5hC0aMAQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Workspace$zgPEW9DqQ5VPDf8jmwy5hC0aMAQ;

    invoke-direct {v0}, Lcom/miui/home/launcher/-$$Lambda$Workspace$zgPEW9DqQ5VPDf8jmwy5hC0aMAQ;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/-$$Lambda$Workspace$zgPEW9DqQ5VPDf8jmwy5hC0aMAQ;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Workspace$zgPEW9DqQ5VPDf8jmwy5hC0aMAQ;

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

    invoke-static {p1}, Lcom/miui/home/launcher/Workspace;->lambda$showAddContactButtonInQuickCallCellLayout$8(Lcom/miui/home/launcher/oldman/QuickCallCellLayout;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
