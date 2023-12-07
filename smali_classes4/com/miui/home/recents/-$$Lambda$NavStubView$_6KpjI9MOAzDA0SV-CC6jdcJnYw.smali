.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$_6KpjI9MOAzDA0SV-CC6jdcJnYw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/NavStubView;

.field private final synthetic f$1:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$_6KpjI9MOAzDA0SV-CC6jdcJnYw;->f$0:Lcom/miui/home/recents/NavStubView;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$_6KpjI9MOAzDA0SV-CC6jdcJnYw;->f$1:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$_6KpjI9MOAzDA0SV-CC6jdcJnYw;->f$0:Lcom/miui/home/recents/NavStubView;

    iget-object p0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$_6KpjI9MOAzDA0SV-CC6jdcJnYw;->f$1:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/NavStubView;->lambda$commonAnimStartAppToHome$25$NavStubView(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method
