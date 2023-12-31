.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$3nZbM39LyD-_ZMB8_51Jn6GuhsQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/content/ContentResolver;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Lcom/miui/home/launcher/ApplicationsMessage$ScriptCountObserver;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;Lcom/miui/home/launcher/ApplicationsMessage$ScriptCountObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$3nZbM39LyD-_ZMB8_51Jn6GuhsQ;->f$0:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$3nZbM39LyD-_ZMB8_51Jn6GuhsQ;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$3nZbM39LyD-_ZMB8_51Jn6GuhsQ;->f$2:Lcom/miui/home/launcher/ApplicationsMessage$ScriptCountObserver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$3nZbM39LyD-_ZMB8_51Jn6GuhsQ;->f$0:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$3nZbM39LyD-_ZMB8_51Jn6GuhsQ;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$3nZbM39LyD-_ZMB8_51Jn6GuhsQ;->f$2:Lcom/miui/home/launcher/ApplicationsMessage$ScriptCountObserver;

    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/ApplicationsMessage;->lambda$initSuperscriptCountObserver$0(Landroid/content/ContentResolver;Ljava/lang/String;Lcom/miui/home/launcher/ApplicationsMessage$ScriptCountObserver;)V

    return-void
.end method
