.class public final synthetic Lcom/miui/home/launcher/maml/auth/-$$Lambda$MaMlAuthManager$p4J4Vs_4hM246VUo48Dbqg9aiYw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;

.field private final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/maml/auth/-$$Lambda$MaMlAuthManager$p4J4Vs_4hM246VUo48Dbqg9aiYw;->f$0:Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;

    iput-object p2, p0, Lcom/miui/home/launcher/maml/auth/-$$Lambda$MaMlAuthManager$p4J4Vs_4hM246VUo48Dbqg9aiYw;->f$1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/maml/auth/-$$Lambda$MaMlAuthManager$p4J4Vs_4hM246VUo48Dbqg9aiYw;->f$0:Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;

    iget-object p0, p0, Lcom/miui/home/launcher/maml/auth/-$$Lambda$MaMlAuthManager$p4J4Vs_4hM246VUo48Dbqg9aiYw;->f$1:Ljava/util/Set;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;->lambda$checkAuthority$0$MaMlAuthManager(Ljava/util/Set;)V

    return-void
.end method
