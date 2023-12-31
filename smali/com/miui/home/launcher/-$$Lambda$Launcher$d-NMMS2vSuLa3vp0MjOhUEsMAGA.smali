.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$d-NMMS2vSuLa3vp0MjOhUEsMAGA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$1:Ljava/util/List;

.field private final synthetic f$2:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Ljava/util/List;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$d-NMMS2vSuLa3vp0MjOhUEsMAGA;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$d-NMMS2vSuLa3vp0MjOhUEsMAGA;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$d-NMMS2vSuLa3vp0MjOhUEsMAGA;->f$2:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$d-NMMS2vSuLa3vp0MjOhUEsMAGA;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$d-NMMS2vSuLa3vp0MjOhUEsMAGA;->f$1:Ljava/util/List;

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$d-NMMS2vSuLa3vp0MjOhUEsMAGA;->f$2:Landroid/content/Intent;

    invoke-virtual {v0, v1, p0}, Lcom/miui/home/launcher/Launcher;->lambda$updateShortcut$60$Launcher(Ljava/util/List;Landroid/content/Intent;)V

    return-void
.end method
