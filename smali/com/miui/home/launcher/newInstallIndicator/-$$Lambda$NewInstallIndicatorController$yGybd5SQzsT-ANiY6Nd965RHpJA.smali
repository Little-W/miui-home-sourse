.class public final synthetic Lcom/miui/home/launcher/newInstallIndicator/-$$Lambda$NewInstallIndicatorController$yGybd5SQzsT-ANiY6Nd965RHpJA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava8/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/newInstallIndicator/-$$Lambda$NewInstallIndicatorController$yGybd5SQzsT-ANiY6Nd965RHpJA;->f$0:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/newInstallIndicator/-$$Lambda$NewInstallIndicatorController$yGybd5SQzsT-ANiY6Nd965RHpJA;->f$0:Ljava/util/HashSet;

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/newInstallIndicator/NewInstallIndicatorController;->lambda$null$2(Ljava/util/HashSet;Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method
