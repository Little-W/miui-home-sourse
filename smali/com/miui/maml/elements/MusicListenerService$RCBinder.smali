.class public Lcom/miui/maml/elements/MusicListenerService$RCBinder;
.super Landroid/os/Binder;
.source "MusicListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/MusicListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RCBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/MusicListenerService;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/MusicListenerService;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/miui/maml/elements/MusicListenerService$RCBinder;->this$0:Lcom/miui/maml/elements/MusicListenerService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/miui/maml/elements/MusicListenerService;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/miui/maml/elements/MusicListenerService$RCBinder;->this$0:Lcom/miui/maml/elements/MusicListenerService;

    return-object v0
.end method
