.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$ScreenUtils$M2EDJ6lEI58sqPVHJapNsGbbxkg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava8/util/function/Function;


# instance fields
.field private final synthetic f$0:Landroid/content/ContentResolver;

.field private final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContentResolver;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$ScreenUtils$M2EDJ6lEI58sqPVHJapNsGbbxkg;->f$0:Landroid/content/ContentResolver;

    iput-wide p2, p0, Lcom/miui/home/launcher/-$$Lambda$ScreenUtils$M2EDJ6lEI58sqPVHJapNsGbbxkg;->f$1:J

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$ScreenUtils$M2EDJ6lEI58sqPVHJapNsGbbxkg;->f$0:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/miui/home/launcher/-$$Lambda$ScreenUtils$M2EDJ6lEI58sqPVHJapNsGbbxkg;->f$1:J

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, v1, v2, p1}, Lcom/miui/home/launcher/ScreenUtils;->lambda$deleteScreen$1(Landroid/content/ContentResolver;JLjava/lang/Void;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
