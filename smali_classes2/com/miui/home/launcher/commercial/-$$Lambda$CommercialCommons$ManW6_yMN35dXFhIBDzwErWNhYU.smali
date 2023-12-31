.class public final synthetic Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$ManW6_yMN35dXFhIBDzwErWNhYU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/util/function/Function;

.field private final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$ManW6_yMN35dXFhIBDzwErWNhYU;->f$0:Ljava/util/function/Function;

    iput-object p2, p0, Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$ManW6_yMN35dXFhIBDzwErWNhYU;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$ManW6_yMN35dXFhIBDzwErWNhYU;->f$0:Ljava/util/function/Function;

    iget-object p0, p0, Lcom/miui/home/launcher/commercial/-$$Lambda$CommercialCommons$ManW6_yMN35dXFhIBDzwErWNhYU;->f$1:Ljava/util/List;

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/commercial/CommercialCommons;->lambda$buildRecommendInfoList$2(Ljava/util/function/Function;Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method
