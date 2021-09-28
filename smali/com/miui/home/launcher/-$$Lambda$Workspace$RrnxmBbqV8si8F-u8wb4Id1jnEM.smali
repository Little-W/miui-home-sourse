.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Workspace$RrnxmBbqV8si8F-u8wb4Id1jnEM;
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

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Workspace$RrnxmBbqV8si8F-u8wb4Id1jnEM;->f$0:Lcom/miui/home/launcher/Workspace;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$Workspace$RrnxmBbqV8si8F-u8wb4Id1jnEM;->f$1:Lcom/miui/home/launcher/ItemInfo;

    iput-object p3, p0, Lcom/miui/home/launcher/-$$Lambda$Workspace$RrnxmBbqV8si8F-u8wb4Id1jnEM;->f$2:Lcom/miui/home/launcher/LauncherWidgetView;

    iput-object p4, p0, Lcom/miui/home/launcher/-$$Lambda$Workspace$RrnxmBbqV8si8F-u8wb4Id1jnEM;->f$3:Lcom/miui/home/launcher/CellLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Workspace$RrnxmBbqV8si8F-u8wb4Id1jnEM;->f$0:Lcom/miui/home/launcher/Workspace;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$Workspace$RrnxmBbqV8si8F-u8wb4Id1jnEM;->f$1:Lcom/miui/home/launcher/ItemInfo;

    iget-object v2, p0, Lcom/miui/home/launcher/-$$Lambda$Workspace$RrnxmBbqV8si8F-u8wb4Id1jnEM;->f$2:Lcom/miui/home/launcher/LauncherWidgetView;

    iget-object v3, p0, Lcom/miui/home/launcher/-$$Lambda$Workspace$RrnxmBbqV8si8F-u8wb4Id1jnEM;->f$3:Lcom/miui/home/launcher/CellLayout;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/home/launcher/Workspace;->lambda$checkAppWidgetResizeFrameWhenDropOnOriginScreen$2(Lcom/miui/home/launcher/Workspace;Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/LauncherWidgetView;Lcom/miui/home/launcher/CellLayout;)V

    return-void
.end method
