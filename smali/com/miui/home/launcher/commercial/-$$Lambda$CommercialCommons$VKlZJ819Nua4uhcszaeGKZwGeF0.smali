.class public final synthetic Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$VKlZJ819Nua4uhcszaeGKZwGeF0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava8/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/util/List;

.field private final synthetic f$1:Ljava8/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava8/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$VKlZJ819Nua4uhcszaeGKZwGeF0;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$VKlZJ819Nua4uhcszaeGKZwGeF0;->f$1:Ljava8/util/function/Function;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$VKlZJ819Nua4uhcszaeGKZwGeF0;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$VKlZJ819Nua4uhcszaeGKZwGeF0;->f$1:Ljava8/util/function/Function;

    invoke-static {v0, v1, p1}, Lcom/miui/home/launcher/commercial/CommercialCommons;->lambda$buildRecommendInfoList$2(Ljava/util/List;Ljava8/util/function/Function;Ljava/lang/Object;)V

    return-void
.end method
