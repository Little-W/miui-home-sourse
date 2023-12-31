.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Workspace$XlyomVf3Pd6SMG2C-wNFRHAtfLc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Workspace;

.field private final synthetic f$1:Lcom/miui/home/launcher/ItemInfo;

.field private final synthetic f$2:Lcom/miui/home/launcher/LauncherWidgetView;

.field private final synthetic f$3:Lcom/miui/home/launcher/CellLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/LauncherWidgetView;Lcom/miui/home/launcher/CellLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Workspace$XlyomVf3Pd6SMG2C-wNFRHAtfLc;->f$0:Lcom/miui/home/launcher/Workspace;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$Workspace$XlyomVf3Pd6SMG2C-wNFRHAtfLc;->f$1:Lcom/miui/home/launcher/ItemInfo;

    iput-object p3, p0, Lcom/miui/home/launcher/-$$Lambda$Workspace$XlyomVf3Pd6SMG2C-wNFRHAtfLc;->f$2:Lcom/miui/home/launcher/LauncherWidgetView;

    iput-object p4, p0, Lcom/miui/home/launcher/-$$Lambda$Workspace$XlyomVf3Pd6SMG2C-wNFRHAtfLc;->f$3:Lcom/miui/home/launcher/CellLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Workspace$XlyomVf3Pd6SMG2C-wNFRHAtfLc;->f$0:Lcom/miui/home/launcher/Workspace;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$Workspace$XlyomVf3Pd6SMG2C-wNFRHAtfLc;->f$1:Lcom/miui/home/launcher/ItemInfo;

    iget-object v2, p0, Lcom/miui/home/launcher/-$$Lambda$Workspace$XlyomVf3Pd6SMG2C-wNFRHAtfLc;->f$2:Lcom/miui/home/launcher/LauncherWidgetView;

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$Workspace$XlyomVf3Pd6SMG2C-wNFRHAtfLc;->f$3:Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0, v1, v2, p0}, Lcom/miui/home/launcher/Workspace;->lambda$checkAppWidgetResizeFrameWhenDropOnOriginScreen$3$Workspace(Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/LauncherWidgetView;Lcom/miui/home/launcher/CellLayout;)V

    return-void
.end method
