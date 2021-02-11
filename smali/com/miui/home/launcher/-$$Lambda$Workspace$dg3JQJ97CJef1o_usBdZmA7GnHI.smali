.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Workspace$dg3JQJ97CJef1o_usBdZmA7GnHI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava8/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Workspace;

.field private final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Workspace;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Workspace$dg3JQJ97CJef1o_usBdZmA7GnHI;->f$0:Lcom/miui/home/launcher/Workspace;

    iput-wide p2, p0, Lcom/miui/home/launcher/-$$Lambda$Workspace$dg3JQJ97CJef1o_usBdZmA7GnHI;->f$1:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Workspace$dg3JQJ97CJef1o_usBdZmA7GnHI;->f$0:Lcom/miui/home/launcher/Workspace;

    iget-wide v1, p0, Lcom/miui/home/launcher/-$$Lambda$Workspace$dg3JQJ97CJef1o_usBdZmA7GnHI;->f$1:J

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, v2, p1}, Lcom/miui/home/launcher/Workspace;->lambda$deleteScreen$9(Lcom/miui/home/launcher/Workspace;JLjava/lang/Long;)V

    return-void
.end method
