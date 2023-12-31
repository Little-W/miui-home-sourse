.class public final synthetic Lcom/miui/home/launcher/newInstallIndicator/-$$Lambda$NewInstallIndicatorController$Mt9Rc6aFJW3H4Q57jEZ5QCJo-IE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/newInstallIndicator/-$$Lambda$NewInstallIndicatorController$Mt9Rc6aFJW3H4Q57jEZ5QCJo-IE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/newInstallIndicator/-$$Lambda$NewInstallIndicatorController$Mt9Rc6aFJW3H4Q57jEZ5QCJo-IE;

    invoke-direct {v0}, Lcom/miui/home/launcher/newInstallIndicator/-$$Lambda$NewInstallIndicatorController$Mt9Rc6aFJW3H4Q57jEZ5QCJo-IE;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/newInstallIndicator/-$$Lambda$NewInstallIndicatorController$Mt9Rc6aFJW3H4Q57jEZ5QCJo-IE;->INSTANCE:Lcom/miui/home/launcher/newInstallIndicator/-$$Lambda$NewInstallIndicatorController$Mt9Rc6aFJW3H4Q57jEZ5QCJo-IE;

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

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {p1}, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;->lambda$getShortcutInfosInFolders$1(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result p0

    return p0
.end method
