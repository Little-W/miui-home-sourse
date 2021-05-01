.class public final synthetic Lcom/miui/home/launcher/util/-$$Lambda$WorkProfileHelper$l1m7t_IB1RZ3tsbVbtLdFZBJD2s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Ljava/util/function/Consumer;

.field private final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/util/-$$Lambda$WorkProfileHelper$l1m7t_IB1RZ3tsbVbtLdFZBJD2s;->f$0:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/miui/home/launcher/util/-$$Lambda$WorkProfileHelper$l1m7t_IB1RZ3tsbVbtLdFZBJD2s;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/util/-$$Lambda$WorkProfileHelper$l1m7t_IB1RZ3tsbVbtLdFZBJD2s;->f$0:Ljava/util/function/Consumer;

    iget-object v1, p0, Lcom/miui/home/launcher/util/-$$Lambda$WorkProfileHelper$l1m7t_IB1RZ3tsbVbtLdFZBJD2s;->f$1:Landroid/content/Context;

    invoke-static {v0, v1, p1, p2}, Lcom/miui/home/launcher/util/WorkProfileHelper;->lambda$showWorkProfileTipsOnDrawer$409(Ljava/util/function/Consumer;Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void
.end method
