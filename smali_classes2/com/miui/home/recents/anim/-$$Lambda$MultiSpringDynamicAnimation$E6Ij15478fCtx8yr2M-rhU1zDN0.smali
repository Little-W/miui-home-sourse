.class public final synthetic Lcom/miui/home/recents/anim/-$$Lambda$MultiSpringDynamicAnimation$E6Ij15478fCtx8yr2M-rhU1zDN0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation$Callback;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;

.field private final synthetic f$1:J

.field private final synthetic f$2:[Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;J[Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/anim/-$$Lambda$MultiSpringDynamicAnimation$E6Ij15478fCtx8yr2M-rhU1zDN0;->f$0:Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;

    iput-wide p2, p0, Lcom/miui/home/recents/anim/-$$Lambda$MultiSpringDynamicAnimation$E6Ij15478fCtx8yr2M-rhU1zDN0;->f$1:J

    iput-object p4, p0, Lcom/miui/home/recents/anim/-$$Lambda$MultiSpringDynamicAnimation$E6Ij15478fCtx8yr2M-rhU1zDN0;->f$2:[Z

    return-void
.end method


# virtual methods
.method public final apply(Lcom/miui/home/recents/anim/SpringBundle;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/anim/-$$Lambda$MultiSpringDynamicAnimation$E6Ij15478fCtx8yr2M-rhU1zDN0;->f$0:Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;

    iget-wide v1, p0, Lcom/miui/home/recents/anim/-$$Lambda$MultiSpringDynamicAnimation$E6Ij15478fCtx8yr2M-rhU1zDN0;->f$1:J

    iget-object p0, p0, Lcom/miui/home/recents/anim/-$$Lambda$MultiSpringDynamicAnimation$E6Ij15478fCtx8yr2M-rhU1zDN0;->f$2:[Z

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/miui/home/recents/anim/MultiSpringDynamicAnimation;->lambda$doAnimationFrame$1$MultiSpringDynamicAnimation(J[ZLcom/miui/home/recents/anim/SpringBundle;)V

    return-void
.end method
