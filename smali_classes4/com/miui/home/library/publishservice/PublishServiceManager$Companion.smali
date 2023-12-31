.class public final Lcom/miui/home/library/publishservice/PublishServiceManager$Companion;
.super Ljava/lang/Object;
.source "PublishServiceManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/library/publishservice/PublishServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPublishServiceManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PublishServiceManager.kt\ncom/miui/home/library/publishservice/PublishServiceManager$Companion\n*L\n1#1,38:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/miui/home/library/publishservice/PublishServiceManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/miui/home/library/publishservice/PublishServiceManager;
    .locals 1

    invoke-static {}, Lcom/miui/home/library/publishservice/PublishServiceManager;->access$getInstance$cp()Lkotlin/Lazy;

    move-result-object p0

    sget-object v0, Lcom/miui/home/library/publishservice/PublishServiceManager;->Companion:Lcom/miui/home/library/publishservice/PublishServiceManager$Companion;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/library/publishservice/PublishServiceManager;

    return-object p0
.end method
