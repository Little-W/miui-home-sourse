.class public final synthetic Lcom/miui/home/recents/settings/-$$Lambda$NavBarTypeContainerPreference$6bJyeLXyWQesLQ1Bjq0wsSlpftc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/settings/-$$Lambda$NavBarTypeContainerPreference$6bJyeLXyWQesLQ1Bjq0wsSlpftc;->f$0:Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/recents/settings/-$$Lambda$NavBarTypeContainerPreference$6bJyeLXyWQesLQ1Bjq0wsSlpftc;->f$0:Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/settings/NavBarTypeContainerPreference;->lambda$updateFullScreenViewAnim$0$NavBarTypeContainerPreference(Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
