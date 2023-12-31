.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$BucQGCW01DcyY8GVzIUOHlkpSeA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$1:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$BucQGCW01DcyY8GVzIUOHlkpSeA;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$BucQGCW01DcyY8GVzIUOHlkpSeA;->f$1:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$BucQGCW01DcyY8GVzIUOHlkpSeA;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$BucQGCW01DcyY8GVzIUOHlkpSeA;->f$1:Ljava/util/HashMap;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/Launcher;->lambda$bindAppIconResize$84$Launcher(Ljava/util/HashMap;Ljava/lang/Void;)V

    return-void
.end method
