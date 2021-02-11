.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$k2iNr_IEFwU4mc8dm4EoTfDJPgY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$1:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$k2iNr_IEFwU4mc8dm4EoTfDJPgY;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$k2iNr_IEFwU4mc8dm4EoTfDJPgY;->f$1:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$k2iNr_IEFwU4mc8dm4EoTfDJPgY;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$k2iNr_IEFwU4mc8dm4EoTfDJPgY;->f$1:Landroid/os/UserHandle;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->lambda$checkAllUserDeepShortcuts$31(Lcom/miui/home/launcher/Launcher;Landroid/os/UserHandle;)V

    return-void
.end method
