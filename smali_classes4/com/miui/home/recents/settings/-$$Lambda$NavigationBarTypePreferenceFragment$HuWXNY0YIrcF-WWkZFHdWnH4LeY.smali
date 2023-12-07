.class public final synthetic Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$HuWXNY0YIrcF-WWkZFHdWnH4LeY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Supplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$HuWXNY0YIrcF-WWkZFHdWnH4LeY;->f$0:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$HuWXNY0YIrcF-WWkZFHdWnH4LeY;->f$0:Ljava/util/function/Supplier;

    check-cast p1, Ljava/lang/Void;

    invoke-static {p0, p1}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->lambda$asyncSetCheckboxPreferenceCheckedStatus$20(Ljava/util/function/Supplier;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
