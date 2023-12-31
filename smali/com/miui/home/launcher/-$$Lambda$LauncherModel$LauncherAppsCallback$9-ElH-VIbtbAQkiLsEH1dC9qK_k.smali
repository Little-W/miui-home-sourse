.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$LauncherModel$LauncherAppsCallback$9-ElH-VIbtbAQkiLsEH1dC9qK_k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$LauncherAppsCallback$9-ElH-VIbtbAQkiLsEH1dC9qK_k;->f$0:Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$LauncherAppsCallback$9-ElH-VIbtbAQkiLsEH1dC9qK_k;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$LauncherAppsCallback$9-ElH-VIbtbAQkiLsEH1dC9qK_k;->f$0:Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$LauncherModel$LauncherAppsCallback$9-ElH-VIbtbAQkiLsEH1dC9qK_k;->f$1:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/LauncherModel$LauncherAppsCallback;->lambda$onPackageChanged$0$LauncherModel$LauncherAppsCallback(Ljava/lang/String;)V

    return-void
.end method
