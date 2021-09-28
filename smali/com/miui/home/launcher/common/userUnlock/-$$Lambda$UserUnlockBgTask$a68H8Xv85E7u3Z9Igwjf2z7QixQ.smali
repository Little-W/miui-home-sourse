.class public final synthetic Lcom/miui/home/launcher/common/userUnlock/-$$Lambda$UserUnlockBgTask$a68H8Xv85E7u3Z9Igwjf2z7QixQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/common/userUnlock/UserUnlockBgTask;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/common/userUnlock/UserUnlockBgTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/common/userUnlock/-$$Lambda$UserUnlockBgTask$a68H8Xv85E7u3Z9Igwjf2z7QixQ;->f$0:Lcom/miui/home/launcher/common/userUnlock/UserUnlockBgTask;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/common/userUnlock/-$$Lambda$UserUnlockBgTask$a68H8Xv85E7u3Z9Igwjf2z7QixQ;->f$0:Lcom/miui/home/launcher/common/userUnlock/UserUnlockBgTask;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/common/userUnlock/UserUnlockBgTask;->lambda$run$0(Lcom/miui/home/launcher/common/userUnlock/UserUnlockBgTask;Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
