.class Lcom/miui/maml/RenderVsyncUpdater$RenderVsyncUpdaterHolder;
.super Ljava/lang/Object;
.source "RenderVsyncUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/RenderVsyncUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RenderVsyncUpdaterHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/maml/RenderVsyncUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/miui/maml/RenderVsyncUpdater;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/maml/RenderVsyncUpdater;-><init>(Lcom/miui/maml/RenderVsyncUpdater$1;)V

    sput-object v0, Lcom/miui/maml/RenderVsyncUpdater$RenderVsyncUpdaterHolder;->INSTANCE:Lcom/miui/maml/RenderVsyncUpdater;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
