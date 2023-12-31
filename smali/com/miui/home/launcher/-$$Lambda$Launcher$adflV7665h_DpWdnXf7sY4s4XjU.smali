.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$adflV7665h_DpWdnXf7sY4s4XjU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$1:Lcom/miui/home/launcher/FolderInfo;

.field private final synthetic f$2:Lcom/miui/home/launcher/convertsize/ItemPositionInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/convertsize/ItemPositionInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$adflV7665h_DpWdnXf7sY4s4XjU;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$adflV7665h_DpWdnXf7sY4s4XjU;->f$1:Lcom/miui/home/launcher/FolderInfo;

    iput-object p3, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$adflV7665h_DpWdnXf7sY4s4XjU;->f$2:Lcom/miui/home/launcher/convertsize/ItemPositionInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$adflV7665h_DpWdnXf7sY4s4XjU;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$adflV7665h_DpWdnXf7sY4s4XjU;->f$1:Lcom/miui/home/launcher/FolderInfo;

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$adflV7665h_DpWdnXf7sY4s4XjU;->f$2:Lcom/miui/home/launcher/convertsize/ItemPositionInfo;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, v1, p0, p1}, Lcom/miui/home/launcher/Launcher;->lambda$bindFolderResize$82$Launcher(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/convertsize/ItemPositionInfo;Ljava/lang/Integer;)V

    return-void
.end method
