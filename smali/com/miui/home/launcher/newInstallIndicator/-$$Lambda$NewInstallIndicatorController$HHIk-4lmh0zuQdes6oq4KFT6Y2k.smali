.class public final synthetic Lcom/miui/home/launcher/newInstallIndicator/-$$Lambda$NewInstallIndicatorController$HHIk-4lmh0zuQdes6oq4KFT6Y2k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava8/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/newInstallIndicator/-$$Lambda$NewInstallIndicatorController$HHIk-4lmh0zuQdes6oq4KFT6Y2k;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/newInstallIndicator/-$$Lambda$NewInstallIndicatorController$HHIk-4lmh0zuQdes6oq4KFT6Y2k;

    invoke-direct {v0}, Lcom/miui/home/launcher/newInstallIndicator/-$$Lambda$NewInstallIndicatorController$HHIk-4lmh0zuQdes6oq4KFT6Y2k;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/newInstallIndicator/-$$Lambda$NewInstallIndicatorController$HHIk-4lmh0zuQdes6oq4KFT6Y2k;->INSTANCE:Lcom/miui/home/launcher/newInstallIndicator/-$$Lambda$NewInstallIndicatorController$HHIk-4lmh0zuQdes6oq4KFT6Y2k;

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

    invoke-static {p1}, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;->lambda$null$1(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result p1

    return p1
.end method
