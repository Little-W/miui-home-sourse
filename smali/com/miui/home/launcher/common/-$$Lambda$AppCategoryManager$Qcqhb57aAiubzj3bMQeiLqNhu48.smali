.class public final synthetic Lcom/miui/home/launcher/common/-$$Lambda$AppCategoryManager$Qcqhb57aAiubzj3bMQeiLqNhu48;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/common/AppCategoryManager;

.field private final synthetic f$1:Landroid/content/Context;

.field private final synthetic f$2:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/common/AppCategoryManager;Landroid/content/Context;Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/common/-$$Lambda$AppCategoryManager$Qcqhb57aAiubzj3bMQeiLqNhu48;->f$0:Lcom/miui/home/launcher/common/AppCategoryManager;

    iput-object p2, p0, Lcom/miui/home/launcher/common/-$$Lambda$AppCategoryManager$Qcqhb57aAiubzj3bMQeiLqNhu48;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/home/launcher/common/-$$Lambda$AppCategoryManager$Qcqhb57aAiubzj3bMQeiLqNhu48;->f$2:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/common/-$$Lambda$AppCategoryManager$Qcqhb57aAiubzj3bMQeiLqNhu48;->f$0:Lcom/miui/home/launcher/common/AppCategoryManager;

    iget-object v1, p0, Lcom/miui/home/launcher/common/-$$Lambda$AppCategoryManager$Qcqhb57aAiubzj3bMQeiLqNhu48;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/home/launcher/common/-$$Lambda$AppCategoryManager$Qcqhb57aAiubzj3bMQeiLqNhu48;->f$2:Ljava/util/HashSet;

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/AppCategoryManager;->lambda$initAppCategoryListAsync$0(Lcom/miui/home/launcher/common/AppCategoryManager;Landroid/content/Context;Ljava/util/HashSet;)V

    return-void
.end method
