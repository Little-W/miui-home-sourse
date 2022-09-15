.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$yCjXvlTN30cwSTZkjEVno7XrBxM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$1:Lcom/miui/home/launcher/AppInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/AppInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$yCjXvlTN30cwSTZkjEVno7XrBxM;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$yCjXvlTN30cwSTZkjEVno7XrBxM;->f$1:Lcom/miui/home/launcher/AppInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$yCjXvlTN30cwSTZkjEVno7XrBxM;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$yCjXvlTN30cwSTZkjEVno7XrBxM;->f$1:Lcom/miui/home/launcher/AppInfo;

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/Launcher;->lambda$bindAppsRemoved$62(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/AppInfo;Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method
