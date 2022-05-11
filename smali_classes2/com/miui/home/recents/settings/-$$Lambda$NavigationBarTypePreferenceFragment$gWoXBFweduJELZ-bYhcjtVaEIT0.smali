.class public final synthetic Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$gWoXBFweduJELZ-bYhcjtVaEIT0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final synthetic f$0:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$gWoXBFweduJELZ-bYhcjtVaEIT0;->f$0:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/settings/-$$Lambda$NavigationBarTypePreferenceFragment$gWoXBFweduJELZ-bYhcjtVaEIT0;->f$0:Ljava/util/function/Consumer;

    invoke-static {v0, p1, p2}, Lcom/miui/home/recents/settings/NavigationBarTypePreferenceFragment;->lambda$initCheckboxPreferenceItem$11(Ljava/util/function/Consumer;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
