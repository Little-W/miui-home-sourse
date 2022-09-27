.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$t68bLuEH0-_8qXMpp_LUIoincCE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$1:I

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;ILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$t68bLuEH0-_8qXMpp_LUIoincCE;->f$0:Lcom/miui/home/launcher/Launcher;

    iput p2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$t68bLuEH0-_8qXMpp_LUIoincCE;->f$1:I

    iput-object p3, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$t68bLuEH0-_8qXMpp_LUIoincCE;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$t68bLuEH0-_8qXMpp_LUIoincCE;->f$3:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$t68bLuEH0-_8qXMpp_LUIoincCE;->f$0:Lcom/miui/home/launcher/Launcher;

    iget v1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$t68bLuEH0-_8qXMpp_LUIoincCE;->f$1:I

    iget-object v2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$t68bLuEH0-_8qXMpp_LUIoincCE;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$t68bLuEH0-_8qXMpp_LUIoincCE;->f$3:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/home/launcher/Launcher;->lambda$getShortcutInfoWithIntent$50(Lcom/miui/home/launcher/Launcher;ILjava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
